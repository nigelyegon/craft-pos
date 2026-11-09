import 'package:drift/drift.dart' show Value;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

import '../../core/database/app_database.dart';

import '../../core/providers/business_provider.dart';
import '../../core/providers/database_provider.dart';
import '../../core/theme/app_theme.dart';

class BusinessSetupScreen extends ConsumerStatefulWidget {
  const BusinessSetupScreen({super.key});

  @override
  ConsumerState<BusinessSetupScreen> createState() =>
      _BusinessSetupScreenState();
}

class _BusinessSetupScreenState extends ConsumerState<BusinessSetupScreen> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _addressController = TextEditingController();

  String _currency = 'KES';
  bool _saving = false;

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  String? _optionalValue(String value) {
    final trimmed = value.trim();
    return trimmed.isEmpty ? null : trimmed;
  }

  String? _validateEmail(String? value) {
    final email = value?.trim() ?? '';

    if (email.isEmpty) return null;

    final valid = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(email);

    return valid ? null : 'Enter a valid email address';
  }

  String? _validatePhone(String? value) {
    final phone = value?.trim() ?? '';

    if (phone.isEmpty) return null;

    if (phone.length < 7) {
      return 'Enter a valid phone number';
    }

    return null;
  }

  Future<void> _saveBusiness() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _saving = true);

    try {
      final db = ref.read(databaseProvider);

      // Prevent accidental creation of a second business
      // during first-time registration.
      final existing = await db.select(db.businesses).getSingleOrNull();

      if (existing != null) {
        ref.invalidate(businessProvider);

        if (!mounted) return;
        context.go('/dashboard');
        return;
      }

      final businessId = const Uuid().v4();

      await db
          .into(db.businesses)
          .insert(
            BusinessesCompanion.insert(
              id: businessId,
              name: _nameController.text.trim(),
              phone: Value(_optionalValue(_phoneController.text)),
              email: Value(_optionalValue(_emailController.text)),
              address: Value(_optionalValue(_addressController.text)),
              currency: Value(_currency),
            ),
          );

      // Refresh the provider so the dashboard sees the new record.
      ref.invalidate(businessProvider);

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Business registered successfully.'),
          backgroundColor: AppTheme.forest,
        ),
      );

      context.go('/dashboard');
    } catch (error) {
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Unable to save business: $error'),
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      if (mounted) {
        setState(() => _saving = false);
      }
    }
  }

  InputDecoration _decoration(String label, IconData icon, {String? hint}) {
    return InputDecoration(
      labelText: label,
      hintText: hint,
      prefixIcon: Icon(icon),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 620),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(width < 500 ? 20 : 32),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Icon(
                      Icons.storefront_outlined,
                      size: 58,
                      color: AppTheme.forest,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Set up your business',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Tell us a little about your shop. '
                      'You can update these details later.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 28),

                    TextFormField(
                      controller: _nameController,
                      textCapitalization: TextCapitalization.words,
                      decoration: _decoration(
                        'Business name *',
                        Icons.business_outlined,
                        hint: 'e.g. Craft Retail Store',
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Business name is required';
                        }
                        if (value.trim().length < 2) {
                          return 'Enter at least 2 characters';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 18),

                    TextFormField(
                      controller: _phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: _decoration(
                        'Phone number',
                        Icons.phone_outlined,
                        hint: 'e.g. 0712 345 678',
                      ),
                      validator: _validatePhone,
                    ),
                    const SizedBox(height: 18),

                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: _decoration(
                        'Email address',
                        Icons.email_outlined,
                        hint: 'business@example.com',
                      ),
                      validator: _validateEmail,
                    ),
                    const SizedBox(height: 18),

                    TextFormField(
                      controller: _addressController,
                      textCapitalization: TextCapitalization.words,
                      maxLines: 2,
                      decoration: _decoration(
                        'Business location',
                        Icons.location_on_outlined,
                        hint: 'Town, estate or physical address',
                      ),
                    ),
                    const SizedBox(height: 18),

                    DropdownButtonFormField<String>(
                      initialValue: _currency,
                      decoration: _decoration(
                        'Business currency',
                        Icons.payments_outlined,
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: 'KES',
                          child: Text('KES - Kenyan Shilling'),
                        ),
                        DropdownMenuItem(
                          value: 'UGX',
                          child: Text('UGX - Ugandan Shilling'),
                        ),
                        DropdownMenuItem(
                          value: 'TZS',
                          child: Text('TZS - Tanzanian Shilling'),
                        ),
                        DropdownMenuItem(
                          value: 'USD',
                          child: Text('USD - US Dollar'),
                        ),
                      ],
                      onChanged:
                          _saving
                              ? null
                              : (value) {
                                if (value != null) {
                                  setState(() => _currency = value);
                                }
                              },
                    ),
                    const SizedBox(height: 28),

                    FilledButton.icon(
                      onPressed: _saving ? null : _saveBusiness,
                      icon:
                          _saving
                              ? const SizedBox(
                                width: 18,
                                height: 18,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Colors.white,
                                ),
                              )
                              : const Icon(Icons.check_circle_outline),
                      label: Text(
                        _saving ? 'Saving business...' : 'Save and continue',
                      ),
                      style: FilledButton.styleFrom(
                        backgroundColor: AppTheme.forest,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 17),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Your business information is saved on this device.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
