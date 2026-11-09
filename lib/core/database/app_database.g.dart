// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $BusinessesTable extends Businesses
    with TableInfo<$BusinessesTable, BusinessesData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BusinessesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
    'phone',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _addressMeta = const VerificationMeta(
    'address',
  );
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
    'address',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _currencyMeta = const VerificationMeta(
    'currency',
  );
  @override
  late final GeneratedColumn<String> currency = GeneratedColumn<String>(
    'currency',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('KES'),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    phone,
    email,
    address,
    currency,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'businesses';
  @override
  VerificationContext validateIntegrity(
    Insertable<BusinessesData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
        _phoneMeta,
        phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta),
      );
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    }
    if (data.containsKey('address')) {
      context.handle(
        _addressMeta,
        address.isAcceptableOrUnknown(data['address']!, _addressMeta),
      );
    }
    if (data.containsKey('currency')) {
      context.handle(
        _currencyMeta,
        currency.isAcceptableOrUnknown(data['currency']!, _currencyMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BusinessesData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BusinessesData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      name:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}name'],
          )!,
      phone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone'],
      ),
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      ),
      address: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address'],
      ),
      currency:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}currency'],
          )!,
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
    );
  }

  @override
  $BusinessesTable createAlias(String alias) {
    return $BusinessesTable(attachedDatabase, alias);
  }
}

class BusinessesData extends DataClass implements Insertable<BusinessesData> {
  final String id;
  final String name;
  final String? phone;
  final String? email;
  final String? address;
  final String currency;
  final DateTime createdAt;
  const BusinessesData({
    required this.id,
    required this.name,
    this.phone,
    this.email,
    this.address,
    required this.currency,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    map['currency'] = Variable<String>(currency);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  BusinessesCompanion toCompanion(bool nullToAbsent) {
    return BusinessesCompanion(
      id: Value(id),
      name: Value(name),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      address:
          address == null && nullToAbsent
              ? const Value.absent()
              : Value(address),
      currency: Value(currency),
      createdAt: Value(createdAt),
    );
  }

  factory BusinessesData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BusinessesData(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      phone: serializer.fromJson<String?>(json['phone']),
      email: serializer.fromJson<String?>(json['email']),
      address: serializer.fromJson<String?>(json['address']),
      currency: serializer.fromJson<String>(json['currency']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'phone': serializer.toJson<String?>(phone),
      'email': serializer.toJson<String?>(email),
      'address': serializer.toJson<String?>(address),
      'currency': serializer.toJson<String>(currency),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  BusinessesData copyWith({
    String? id,
    String? name,
    Value<String?> phone = const Value.absent(),
    Value<String?> email = const Value.absent(),
    Value<String?> address = const Value.absent(),
    String? currency,
    DateTime? createdAt,
  }) => BusinessesData(
    id: id ?? this.id,
    name: name ?? this.name,
    phone: phone.present ? phone.value : this.phone,
    email: email.present ? email.value : this.email,
    address: address.present ? address.value : this.address,
    currency: currency ?? this.currency,
    createdAt: createdAt ?? this.createdAt,
  );
  BusinessesData copyWithCompanion(BusinessesCompanion data) {
    return BusinessesData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      phone: data.phone.present ? data.phone.value : this.phone,
      email: data.email.present ? data.email.value : this.email,
      address: data.address.present ? data.address.value : this.address,
      currency: data.currency.present ? data.currency.value : this.currency,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BusinessesData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('address: $address, ')
          ..write('currency: $currency, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, phone, email, address, currency, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BusinessesData &&
          other.id == this.id &&
          other.name == this.name &&
          other.phone == this.phone &&
          other.email == this.email &&
          other.address == this.address &&
          other.currency == this.currency &&
          other.createdAt == this.createdAt);
}

class BusinessesCompanion extends UpdateCompanion<BusinessesData> {
  final Value<String> id;
  final Value<String> name;
  final Value<String?> phone;
  final Value<String?> email;
  final Value<String?> address;
  final Value<String> currency;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const BusinessesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
    this.address = const Value.absent(),
    this.currency = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BusinessesCompanion.insert({
    required String id,
    required String name,
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
    this.address = const Value.absent(),
    this.currency = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name);
  static Insertable<BusinessesData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? phone,
    Expression<String>? email,
    Expression<String>? address,
    Expression<String>? currency,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (address != null) 'address': address,
      if (currency != null) 'currency': currency,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BusinessesCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String?>? phone,
    Value<String?>? email,
    Value<String?>? address,
    Value<String>? currency,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return BusinessesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      address: address ?? this.address,
      currency: currency ?? this.currency,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (currency.present) {
      map['currency'] = Variable<String>(currency.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BusinessesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('address: $address, ')
          ..write('currency: $currency, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CategoriesTable extends Categories
    with TableInfo<$CategoriesTable, Category> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _businessIdMeta = const VerificationMeta(
    'businessId',
  );
  @override
  late final GeneratedColumn<String> businessId = GeneratedColumn<String>(
    'business_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES businesses (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    businessId,
    name,
    description,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'categories';
  @override
  VerificationContext validateIntegrity(
    Insertable<Category> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('business_id')) {
      context.handle(
        _businessIdMeta,
        businessId.isAcceptableOrUnknown(data['business_id']!, _businessIdMeta),
      );
    } else if (isInserting) {
      context.missing(_businessIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Category map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Category(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      businessId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}business_id'],
          )!,
      name:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}name'],
          )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
    );
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(attachedDatabase, alias);
  }
}

class Category extends DataClass implements Insertable<Category> {
  final String id;
  final String businessId;
  final String name;
  final String? description;
  final DateTime createdAt;
  const Category({
    required this.id,
    required this.businessId,
    required this.name,
    this.description,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['business_id'] = Variable<String>(businessId);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  CategoriesCompanion toCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      id: Value(id),
      businessId: Value(businessId),
      name: Value(name),
      description:
          description == null && nullToAbsent
              ? const Value.absent()
              : Value(description),
      createdAt: Value(createdAt),
    );
  }

  factory Category.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Category(
      id: serializer.fromJson<String>(json['id']),
      businessId: serializer.fromJson<String>(json['businessId']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'businessId': serializer.toJson<String>(businessId),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String?>(description),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Category copyWith({
    String? id,
    String? businessId,
    String? name,
    Value<String?> description = const Value.absent(),
    DateTime? createdAt,
  }) => Category(
    id: id ?? this.id,
    businessId: businessId ?? this.businessId,
    name: name ?? this.name,
    description: description.present ? description.value : this.description,
    createdAt: createdAt ?? this.createdAt,
  );
  Category copyWithCompanion(CategoriesCompanion data) {
    return Category(
      id: data.id.present ? data.id.value : this.id,
      businessId:
          data.businessId.present ? data.businessId.value : this.businessId,
      name: data.name.present ? data.name.value : this.name,
      description:
          data.description.present ? data.description.value : this.description,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Category(')
          ..write('id: $id, ')
          ..write('businessId: $businessId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, businessId, name, description, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Category &&
          other.id == this.id &&
          other.businessId == this.businessId &&
          other.name == this.name &&
          other.description == this.description &&
          other.createdAt == this.createdAt);
}

class CategoriesCompanion extends UpdateCompanion<Category> {
  final Value<String> id;
  final Value<String> businessId;
  final Value<String> name;
  final Value<String?> description;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const CategoriesCompanion({
    this.id = const Value.absent(),
    this.businessId = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CategoriesCompanion.insert({
    required String id,
    required String businessId,
    required String name,
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       businessId = Value(businessId),
       name = Value(name);
  static Insertable<Category> custom({
    Expression<String>? id,
    Expression<String>? businessId,
    Expression<String>? name,
    Expression<String>? description,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (businessId != null) 'business_id': businessId,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CategoriesCompanion copyWith({
    Value<String>? id,
    Value<String>? businessId,
    Value<String>? name,
    Value<String?>? description,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return CategoriesCompanion(
      id: id ?? this.id,
      businessId: businessId ?? this.businessId,
      name: name ?? this.name,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (businessId.present) {
      map['business_id'] = Variable<String>(businessId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesCompanion(')
          ..write('id: $id, ')
          ..write('businessId: $businessId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ProductsTable extends Products with TableInfo<$ProductsTable, Product> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _businessIdMeta = const VerificationMeta(
    'businessId',
  );
  @override
  late final GeneratedColumn<String> businessId = GeneratedColumn<String>(
    'business_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES businesses (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _categoryIdMeta = const VerificationMeta(
    'categoryId',
  );
  @override
  late final GeneratedColumn<String> categoryId = GeneratedColumn<String>(
    'category_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES categories (id) ON DELETE SET NULL',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _skuMeta = const VerificationMeta('sku');
  @override
  late final GeneratedColumn<String> sku = GeneratedColumn<String>(
    'sku',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _barcodeMeta = const VerificationMeta(
    'barcode',
  );
  @override
  late final GeneratedColumn<String> barcode = GeneratedColumn<String>(
    'barcode',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sellingPriceMinorMeta = const VerificationMeta(
    'sellingPriceMinor',
  );
  @override
  late final GeneratedColumn<int> sellingPriceMinor = GeneratedColumn<int>(
    'selling_price_minor',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _costPriceMinorMeta = const VerificationMeta(
    'costPriceMinor',
  );
  @override
  late final GeneratedColumn<int> costPriceMinor = GeneratedColumn<int>(
    'cost_price_minor',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _reorderLevelMilliMeta = const VerificationMeta(
    'reorderLevelMilli',
  );
  @override
  late final GeneratedColumn<int> reorderLevelMilli = GeneratedColumn<int>(
    'reorder_level_milli',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(5000),
  );
  static const VerificationMeta _unitMeta = const VerificationMeta('unit');
  @override
  late final GeneratedColumn<String> unit = GeneratedColumn<String>(
    'unit',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('pcs'),
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    businessId,
    categoryId,
    name,
    sku,
    barcode,
    sellingPriceMinor,
    costPriceMinor,
    reorderLevelMilli,
    unit,
    isActive,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'products';
  @override
  VerificationContext validateIntegrity(
    Insertable<Product> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('business_id')) {
      context.handle(
        _businessIdMeta,
        businessId.isAcceptableOrUnknown(data['business_id']!, _businessIdMeta),
      );
    } else if (isInserting) {
      context.missing(_businessIdMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
        _categoryIdMeta,
        categoryId.isAcceptableOrUnknown(data['category_id']!, _categoryIdMeta),
      );
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('sku')) {
      context.handle(
        _skuMeta,
        sku.isAcceptableOrUnknown(data['sku']!, _skuMeta),
      );
    }
    if (data.containsKey('barcode')) {
      context.handle(
        _barcodeMeta,
        barcode.isAcceptableOrUnknown(data['barcode']!, _barcodeMeta),
      );
    }
    if (data.containsKey('selling_price_minor')) {
      context.handle(
        _sellingPriceMinorMeta,
        sellingPriceMinor.isAcceptableOrUnknown(
          data['selling_price_minor']!,
          _sellingPriceMinorMeta,
        ),
      );
    }
    if (data.containsKey('cost_price_minor')) {
      context.handle(
        _costPriceMinorMeta,
        costPriceMinor.isAcceptableOrUnknown(
          data['cost_price_minor']!,
          _costPriceMinorMeta,
        ),
      );
    }
    if (data.containsKey('reorder_level_milli')) {
      context.handle(
        _reorderLevelMilliMeta,
        reorderLevelMilli.isAcceptableOrUnknown(
          data['reorder_level_milli']!,
          _reorderLevelMilliMeta,
        ),
      );
    }
    if (data.containsKey('unit')) {
      context.handle(
        _unitMeta,
        unit.isAcceptableOrUnknown(data['unit']!, _unitMeta),
      );
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Product map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Product(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      businessId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}business_id'],
          )!,
      categoryId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category_id'],
      ),
      name:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}name'],
          )!,
      sku: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sku'],
      ),
      barcode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}barcode'],
      ),
      sellingPriceMinor:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}selling_price_minor'],
          )!,
      costPriceMinor:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}cost_price_minor'],
          )!,
      reorderLevelMilli:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}reorder_level_milli'],
          )!,
      unit:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}unit'],
          )!,
      isActive:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}is_active'],
          )!,
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
      updatedAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}updated_at'],
          )!,
    );
  }

  @override
  $ProductsTable createAlias(String alias) {
    return $ProductsTable(attachedDatabase, alias);
  }
}

class Product extends DataClass implements Insertable<Product> {
  final String id;
  final String businessId;
  final String? categoryId;
  final String name;
  final String? sku;
  final String? barcode;
  final int sellingPriceMinor;
  final int costPriceMinor;
  final int reorderLevelMilli;
  final String unit;
  final bool isActive;
  final DateTime createdAt;
  final DateTime updatedAt;
  const Product({
    required this.id,
    required this.businessId,
    this.categoryId,
    required this.name,
    this.sku,
    this.barcode,
    required this.sellingPriceMinor,
    required this.costPriceMinor,
    required this.reorderLevelMilli,
    required this.unit,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['business_id'] = Variable<String>(businessId);
    if (!nullToAbsent || categoryId != null) {
      map['category_id'] = Variable<String>(categoryId);
    }
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || sku != null) {
      map['sku'] = Variable<String>(sku);
    }
    if (!nullToAbsent || barcode != null) {
      map['barcode'] = Variable<String>(barcode);
    }
    map['selling_price_minor'] = Variable<int>(sellingPriceMinor);
    map['cost_price_minor'] = Variable<int>(costPriceMinor);
    map['reorder_level_milli'] = Variable<int>(reorderLevelMilli);
    map['unit'] = Variable<String>(unit);
    map['is_active'] = Variable<bool>(isActive);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  ProductsCompanion toCompanion(bool nullToAbsent) {
    return ProductsCompanion(
      id: Value(id),
      businessId: Value(businessId),
      categoryId:
          categoryId == null && nullToAbsent
              ? const Value.absent()
              : Value(categoryId),
      name: Value(name),
      sku: sku == null && nullToAbsent ? const Value.absent() : Value(sku),
      barcode:
          barcode == null && nullToAbsent
              ? const Value.absent()
              : Value(barcode),
      sellingPriceMinor: Value(sellingPriceMinor),
      costPriceMinor: Value(costPriceMinor),
      reorderLevelMilli: Value(reorderLevelMilli),
      unit: Value(unit),
      isActive: Value(isActive),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory Product.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Product(
      id: serializer.fromJson<String>(json['id']),
      businessId: serializer.fromJson<String>(json['businessId']),
      categoryId: serializer.fromJson<String?>(json['categoryId']),
      name: serializer.fromJson<String>(json['name']),
      sku: serializer.fromJson<String?>(json['sku']),
      barcode: serializer.fromJson<String?>(json['barcode']),
      sellingPriceMinor: serializer.fromJson<int>(json['sellingPriceMinor']),
      costPriceMinor: serializer.fromJson<int>(json['costPriceMinor']),
      reorderLevelMilli: serializer.fromJson<int>(json['reorderLevelMilli']),
      unit: serializer.fromJson<String>(json['unit']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'businessId': serializer.toJson<String>(businessId),
      'categoryId': serializer.toJson<String?>(categoryId),
      'name': serializer.toJson<String>(name),
      'sku': serializer.toJson<String?>(sku),
      'barcode': serializer.toJson<String?>(barcode),
      'sellingPriceMinor': serializer.toJson<int>(sellingPriceMinor),
      'costPriceMinor': serializer.toJson<int>(costPriceMinor),
      'reorderLevelMilli': serializer.toJson<int>(reorderLevelMilli),
      'unit': serializer.toJson<String>(unit),
      'isActive': serializer.toJson<bool>(isActive),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Product copyWith({
    String? id,
    String? businessId,
    Value<String?> categoryId = const Value.absent(),
    String? name,
    Value<String?> sku = const Value.absent(),
    Value<String?> barcode = const Value.absent(),
    int? sellingPriceMinor,
    int? costPriceMinor,
    int? reorderLevelMilli,
    String? unit,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => Product(
    id: id ?? this.id,
    businessId: businessId ?? this.businessId,
    categoryId: categoryId.present ? categoryId.value : this.categoryId,
    name: name ?? this.name,
    sku: sku.present ? sku.value : this.sku,
    barcode: barcode.present ? barcode.value : this.barcode,
    sellingPriceMinor: sellingPriceMinor ?? this.sellingPriceMinor,
    costPriceMinor: costPriceMinor ?? this.costPriceMinor,
    reorderLevelMilli: reorderLevelMilli ?? this.reorderLevelMilli,
    unit: unit ?? this.unit,
    isActive: isActive ?? this.isActive,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  Product copyWithCompanion(ProductsCompanion data) {
    return Product(
      id: data.id.present ? data.id.value : this.id,
      businessId:
          data.businessId.present ? data.businessId.value : this.businessId,
      categoryId:
          data.categoryId.present ? data.categoryId.value : this.categoryId,
      name: data.name.present ? data.name.value : this.name,
      sku: data.sku.present ? data.sku.value : this.sku,
      barcode: data.barcode.present ? data.barcode.value : this.barcode,
      sellingPriceMinor:
          data.sellingPriceMinor.present
              ? data.sellingPriceMinor.value
              : this.sellingPriceMinor,
      costPriceMinor:
          data.costPriceMinor.present
              ? data.costPriceMinor.value
              : this.costPriceMinor,
      reorderLevelMilli:
          data.reorderLevelMilli.present
              ? data.reorderLevelMilli.value
              : this.reorderLevelMilli,
      unit: data.unit.present ? data.unit.value : this.unit,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Product(')
          ..write('id: $id, ')
          ..write('businessId: $businessId, ')
          ..write('categoryId: $categoryId, ')
          ..write('name: $name, ')
          ..write('sku: $sku, ')
          ..write('barcode: $barcode, ')
          ..write('sellingPriceMinor: $sellingPriceMinor, ')
          ..write('costPriceMinor: $costPriceMinor, ')
          ..write('reorderLevelMilli: $reorderLevelMilli, ')
          ..write('unit: $unit, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    businessId,
    categoryId,
    name,
    sku,
    barcode,
    sellingPriceMinor,
    costPriceMinor,
    reorderLevelMilli,
    unit,
    isActive,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Product &&
          other.id == this.id &&
          other.businessId == this.businessId &&
          other.categoryId == this.categoryId &&
          other.name == this.name &&
          other.sku == this.sku &&
          other.barcode == this.barcode &&
          other.sellingPriceMinor == this.sellingPriceMinor &&
          other.costPriceMinor == this.costPriceMinor &&
          other.reorderLevelMilli == this.reorderLevelMilli &&
          other.unit == this.unit &&
          other.isActive == this.isActive &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class ProductsCompanion extends UpdateCompanion<Product> {
  final Value<String> id;
  final Value<String> businessId;
  final Value<String?> categoryId;
  final Value<String> name;
  final Value<String?> sku;
  final Value<String?> barcode;
  final Value<int> sellingPriceMinor;
  final Value<int> costPriceMinor;
  final Value<int> reorderLevelMilli;
  final Value<String> unit;
  final Value<bool> isActive;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const ProductsCompanion({
    this.id = const Value.absent(),
    this.businessId = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.name = const Value.absent(),
    this.sku = const Value.absent(),
    this.barcode = const Value.absent(),
    this.sellingPriceMinor = const Value.absent(),
    this.costPriceMinor = const Value.absent(),
    this.reorderLevelMilli = const Value.absent(),
    this.unit = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProductsCompanion.insert({
    required String id,
    required String businessId,
    this.categoryId = const Value.absent(),
    required String name,
    this.sku = const Value.absent(),
    this.barcode = const Value.absent(),
    this.sellingPriceMinor = const Value.absent(),
    this.costPriceMinor = const Value.absent(),
    this.reorderLevelMilli = const Value.absent(),
    this.unit = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       businessId = Value(businessId),
       name = Value(name);
  static Insertable<Product> custom({
    Expression<String>? id,
    Expression<String>? businessId,
    Expression<String>? categoryId,
    Expression<String>? name,
    Expression<String>? sku,
    Expression<String>? barcode,
    Expression<int>? sellingPriceMinor,
    Expression<int>? costPriceMinor,
    Expression<int>? reorderLevelMilli,
    Expression<String>? unit,
    Expression<bool>? isActive,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (businessId != null) 'business_id': businessId,
      if (categoryId != null) 'category_id': categoryId,
      if (name != null) 'name': name,
      if (sku != null) 'sku': sku,
      if (barcode != null) 'barcode': barcode,
      if (sellingPriceMinor != null) 'selling_price_minor': sellingPriceMinor,
      if (costPriceMinor != null) 'cost_price_minor': costPriceMinor,
      if (reorderLevelMilli != null) 'reorder_level_milli': reorderLevelMilli,
      if (unit != null) 'unit': unit,
      if (isActive != null) 'is_active': isActive,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProductsCompanion copyWith({
    Value<String>? id,
    Value<String>? businessId,
    Value<String?>? categoryId,
    Value<String>? name,
    Value<String?>? sku,
    Value<String?>? barcode,
    Value<int>? sellingPriceMinor,
    Value<int>? costPriceMinor,
    Value<int>? reorderLevelMilli,
    Value<String>? unit,
    Value<bool>? isActive,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<int>? rowid,
  }) {
    return ProductsCompanion(
      id: id ?? this.id,
      businessId: businessId ?? this.businessId,
      categoryId: categoryId ?? this.categoryId,
      name: name ?? this.name,
      sku: sku ?? this.sku,
      barcode: barcode ?? this.barcode,
      sellingPriceMinor: sellingPriceMinor ?? this.sellingPriceMinor,
      costPriceMinor: costPriceMinor ?? this.costPriceMinor,
      reorderLevelMilli: reorderLevelMilli ?? this.reorderLevelMilli,
      unit: unit ?? this.unit,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (businessId.present) {
      map['business_id'] = Variable<String>(businessId.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<String>(categoryId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (sku.present) {
      map['sku'] = Variable<String>(sku.value);
    }
    if (barcode.present) {
      map['barcode'] = Variable<String>(barcode.value);
    }
    if (sellingPriceMinor.present) {
      map['selling_price_minor'] = Variable<int>(sellingPriceMinor.value);
    }
    if (costPriceMinor.present) {
      map['cost_price_minor'] = Variable<int>(costPriceMinor.value);
    }
    if (reorderLevelMilli.present) {
      map['reorder_level_milli'] = Variable<int>(reorderLevelMilli.value);
    }
    if (unit.present) {
      map['unit'] = Variable<String>(unit.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsCompanion(')
          ..write('id: $id, ')
          ..write('businessId: $businessId, ')
          ..write('categoryId: $categoryId, ')
          ..write('name: $name, ')
          ..write('sku: $sku, ')
          ..write('barcode: $barcode, ')
          ..write('sellingPriceMinor: $sellingPriceMinor, ')
          ..write('costPriceMinor: $costPriceMinor, ')
          ..write('reorderLevelMilli: $reorderLevelMilli, ')
          ..write('unit: $unit, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SalesTable extends Sales with TableInfo<$SalesTable, Sale> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SalesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _businessIdMeta = const VerificationMeta(
    'businessId',
  );
  @override
  late final GeneratedColumn<String> businessId = GeneratedColumn<String>(
    'business_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES businesses (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _totalAmountMinorMeta = const VerificationMeta(
    'totalAmountMinor',
  );
  @override
  late final GeneratedColumn<int> totalAmountMinor = GeneratedColumn<int>(
    'total_amount_minor',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _paymentMethodMeta = const VerificationMeta(
    'paymentMethod',
  );
  @override
  late final GeneratedColumn<String> paymentMethod = GeneratedColumn<String>(
    'payment_method',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('completed'),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    businessId,
    totalAmountMinor,
    paymentMethod,
    status,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sales';
  @override
  VerificationContext validateIntegrity(
    Insertable<Sale> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('business_id')) {
      context.handle(
        _businessIdMeta,
        businessId.isAcceptableOrUnknown(data['business_id']!, _businessIdMeta),
      );
    } else if (isInserting) {
      context.missing(_businessIdMeta);
    }
    if (data.containsKey('total_amount_minor')) {
      context.handle(
        _totalAmountMinorMeta,
        totalAmountMinor.isAcceptableOrUnknown(
          data['total_amount_minor']!,
          _totalAmountMinorMeta,
        ),
      );
    }
    if (data.containsKey('payment_method')) {
      context.handle(
        _paymentMethodMeta,
        paymentMethod.isAcceptableOrUnknown(
          data['payment_method']!,
          _paymentMethodMeta,
        ),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Sale map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Sale(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      businessId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}business_id'],
          )!,
      totalAmountMinor:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}total_amount_minor'],
          )!,
      paymentMethod: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payment_method'],
      ),
      status:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}status'],
          )!,
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
    );
  }

  @override
  $SalesTable createAlias(String alias) {
    return $SalesTable(attachedDatabase, alias);
  }
}

class Sale extends DataClass implements Insertable<Sale> {
  final String id;
  final String businessId;
  final int totalAmountMinor;
  final String? paymentMethod;
  final String status;
  final DateTime createdAt;
  const Sale({
    required this.id,
    required this.businessId,
    required this.totalAmountMinor,
    this.paymentMethod,
    required this.status,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['business_id'] = Variable<String>(businessId);
    map['total_amount_minor'] = Variable<int>(totalAmountMinor);
    if (!nullToAbsent || paymentMethod != null) {
      map['payment_method'] = Variable<String>(paymentMethod);
    }
    map['status'] = Variable<String>(status);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  SalesCompanion toCompanion(bool nullToAbsent) {
    return SalesCompanion(
      id: Value(id),
      businessId: Value(businessId),
      totalAmountMinor: Value(totalAmountMinor),
      paymentMethod:
          paymentMethod == null && nullToAbsent
              ? const Value.absent()
              : Value(paymentMethod),
      status: Value(status),
      createdAt: Value(createdAt),
    );
  }

  factory Sale.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Sale(
      id: serializer.fromJson<String>(json['id']),
      businessId: serializer.fromJson<String>(json['businessId']),
      totalAmountMinor: serializer.fromJson<int>(json['totalAmountMinor']),
      paymentMethod: serializer.fromJson<String?>(json['paymentMethod']),
      status: serializer.fromJson<String>(json['status']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'businessId': serializer.toJson<String>(businessId),
      'totalAmountMinor': serializer.toJson<int>(totalAmountMinor),
      'paymentMethod': serializer.toJson<String?>(paymentMethod),
      'status': serializer.toJson<String>(status),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Sale copyWith({
    String? id,
    String? businessId,
    int? totalAmountMinor,
    Value<String?> paymentMethod = const Value.absent(),
    String? status,
    DateTime? createdAt,
  }) => Sale(
    id: id ?? this.id,
    businessId: businessId ?? this.businessId,
    totalAmountMinor: totalAmountMinor ?? this.totalAmountMinor,
    paymentMethod:
        paymentMethod.present ? paymentMethod.value : this.paymentMethod,
    status: status ?? this.status,
    createdAt: createdAt ?? this.createdAt,
  );
  Sale copyWithCompanion(SalesCompanion data) {
    return Sale(
      id: data.id.present ? data.id.value : this.id,
      businessId:
          data.businessId.present ? data.businessId.value : this.businessId,
      totalAmountMinor:
          data.totalAmountMinor.present
              ? data.totalAmountMinor.value
              : this.totalAmountMinor,
      paymentMethod:
          data.paymentMethod.present
              ? data.paymentMethod.value
              : this.paymentMethod,
      status: data.status.present ? data.status.value : this.status,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Sale(')
          ..write('id: $id, ')
          ..write('businessId: $businessId, ')
          ..write('totalAmountMinor: $totalAmountMinor, ')
          ..write('paymentMethod: $paymentMethod, ')
          ..write('status: $status, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    businessId,
    totalAmountMinor,
    paymentMethod,
    status,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Sale &&
          other.id == this.id &&
          other.businessId == this.businessId &&
          other.totalAmountMinor == this.totalAmountMinor &&
          other.paymentMethod == this.paymentMethod &&
          other.status == this.status &&
          other.createdAt == this.createdAt);
}

class SalesCompanion extends UpdateCompanion<Sale> {
  final Value<String> id;
  final Value<String> businessId;
  final Value<int> totalAmountMinor;
  final Value<String?> paymentMethod;
  final Value<String> status;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const SalesCompanion({
    this.id = const Value.absent(),
    this.businessId = const Value.absent(),
    this.totalAmountMinor = const Value.absent(),
    this.paymentMethod = const Value.absent(),
    this.status = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SalesCompanion.insert({
    required String id,
    required String businessId,
    this.totalAmountMinor = const Value.absent(),
    this.paymentMethod = const Value.absent(),
    this.status = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       businessId = Value(businessId);
  static Insertable<Sale> custom({
    Expression<String>? id,
    Expression<String>? businessId,
    Expression<int>? totalAmountMinor,
    Expression<String>? paymentMethod,
    Expression<String>? status,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (businessId != null) 'business_id': businessId,
      if (totalAmountMinor != null) 'total_amount_minor': totalAmountMinor,
      if (paymentMethod != null) 'payment_method': paymentMethod,
      if (status != null) 'status': status,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SalesCompanion copyWith({
    Value<String>? id,
    Value<String>? businessId,
    Value<int>? totalAmountMinor,
    Value<String?>? paymentMethod,
    Value<String>? status,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return SalesCompanion(
      id: id ?? this.id,
      businessId: businessId ?? this.businessId,
      totalAmountMinor: totalAmountMinor ?? this.totalAmountMinor,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (businessId.present) {
      map['business_id'] = Variable<String>(businessId.value);
    }
    if (totalAmountMinor.present) {
      map['total_amount_minor'] = Variable<int>(totalAmountMinor.value);
    }
    if (paymentMethod.present) {
      map['payment_method'] = Variable<String>(paymentMethod.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SalesCompanion(')
          ..write('id: $id, ')
          ..write('businessId: $businessId, ')
          ..write('totalAmountMinor: $totalAmountMinor, ')
          ..write('paymentMethod: $paymentMethod, ')
          ..write('status: $status, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SaleItemsTable extends SaleItems
    with TableInfo<$SaleItemsTable, SaleItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SaleItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _saleIdMeta = const VerificationMeta('saleId');
  @override
  late final GeneratedColumn<String> saleId = GeneratedColumn<String>(
    'sale_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES sales (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _productIdMeta = const VerificationMeta(
    'productId',
  );
  @override
  late final GeneratedColumn<String> productId = GeneratedColumn<String>(
    'product_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES products (id) ON DELETE RESTRICT',
    ),
  );
  static const VerificationMeta _quantityMilliMeta = const VerificationMeta(
    'quantityMilli',
  );
  @override
  late final GeneratedColumn<int> quantityMilli = GeneratedColumn<int>(
    'quantity_milli',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _unitPriceMinorMeta = const VerificationMeta(
    'unitPriceMinor',
  );
  @override
  late final GeneratedColumn<int> unitPriceMinor = GeneratedColumn<int>(
    'unit_price_minor',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _costPriceMinorMeta = const VerificationMeta(
    'costPriceMinor',
  );
  @override
  late final GeneratedColumn<int> costPriceMinor = GeneratedColumn<int>(
    'cost_price_minor',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _lineTotalMinorMeta = const VerificationMeta(
    'lineTotalMinor',
  );
  @override
  late final GeneratedColumn<int> lineTotalMinor = GeneratedColumn<int>(
    'line_total_minor',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    saleId,
    productId,
    quantityMilli,
    unitPriceMinor,
    costPriceMinor,
    lineTotalMinor,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sale_items';
  @override
  VerificationContext validateIntegrity(
    Insertable<SaleItem> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('sale_id')) {
      context.handle(
        _saleIdMeta,
        saleId.isAcceptableOrUnknown(data['sale_id']!, _saleIdMeta),
      );
    } else if (isInserting) {
      context.missing(_saleIdMeta);
    }
    if (data.containsKey('product_id')) {
      context.handle(
        _productIdMeta,
        productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta),
      );
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('quantity_milli')) {
      context.handle(
        _quantityMilliMeta,
        quantityMilli.isAcceptableOrUnknown(
          data['quantity_milli']!,
          _quantityMilliMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_quantityMilliMeta);
    }
    if (data.containsKey('unit_price_minor')) {
      context.handle(
        _unitPriceMinorMeta,
        unitPriceMinor.isAcceptableOrUnknown(
          data['unit_price_minor']!,
          _unitPriceMinorMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_unitPriceMinorMeta);
    }
    if (data.containsKey('cost_price_minor')) {
      context.handle(
        _costPriceMinorMeta,
        costPriceMinor.isAcceptableOrUnknown(
          data['cost_price_minor']!,
          _costPriceMinorMeta,
        ),
      );
    }
    if (data.containsKey('line_total_minor')) {
      context.handle(
        _lineTotalMinorMeta,
        lineTotalMinor.isAcceptableOrUnknown(
          data['line_total_minor']!,
          _lineTotalMinorMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_lineTotalMinorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SaleItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SaleItem(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      saleId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}sale_id'],
          )!,
      productId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}product_id'],
          )!,
      quantityMilli:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}quantity_milli'],
          )!,
      unitPriceMinor:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}unit_price_minor'],
          )!,
      costPriceMinor:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}cost_price_minor'],
          )!,
      lineTotalMinor:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}line_total_minor'],
          )!,
    );
  }

  @override
  $SaleItemsTable createAlias(String alias) {
    return $SaleItemsTable(attachedDatabase, alias);
  }
}

class SaleItem extends DataClass implements Insertable<SaleItem> {
  final String id;
  final String saleId;
  final String productId;
  final int quantityMilli;
  final int unitPriceMinor;
  final int costPriceMinor;
  final int lineTotalMinor;
  const SaleItem({
    required this.id,
    required this.saleId,
    required this.productId,
    required this.quantityMilli,
    required this.unitPriceMinor,
    required this.costPriceMinor,
    required this.lineTotalMinor,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['sale_id'] = Variable<String>(saleId);
    map['product_id'] = Variable<String>(productId);
    map['quantity_milli'] = Variable<int>(quantityMilli);
    map['unit_price_minor'] = Variable<int>(unitPriceMinor);
    map['cost_price_minor'] = Variable<int>(costPriceMinor);
    map['line_total_minor'] = Variable<int>(lineTotalMinor);
    return map;
  }

  SaleItemsCompanion toCompanion(bool nullToAbsent) {
    return SaleItemsCompanion(
      id: Value(id),
      saleId: Value(saleId),
      productId: Value(productId),
      quantityMilli: Value(quantityMilli),
      unitPriceMinor: Value(unitPriceMinor),
      costPriceMinor: Value(costPriceMinor),
      lineTotalMinor: Value(lineTotalMinor),
    );
  }

  factory SaleItem.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SaleItem(
      id: serializer.fromJson<String>(json['id']),
      saleId: serializer.fromJson<String>(json['saleId']),
      productId: serializer.fromJson<String>(json['productId']),
      quantityMilli: serializer.fromJson<int>(json['quantityMilli']),
      unitPriceMinor: serializer.fromJson<int>(json['unitPriceMinor']),
      costPriceMinor: serializer.fromJson<int>(json['costPriceMinor']),
      lineTotalMinor: serializer.fromJson<int>(json['lineTotalMinor']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'saleId': serializer.toJson<String>(saleId),
      'productId': serializer.toJson<String>(productId),
      'quantityMilli': serializer.toJson<int>(quantityMilli),
      'unitPriceMinor': serializer.toJson<int>(unitPriceMinor),
      'costPriceMinor': serializer.toJson<int>(costPriceMinor),
      'lineTotalMinor': serializer.toJson<int>(lineTotalMinor),
    };
  }

  SaleItem copyWith({
    String? id,
    String? saleId,
    String? productId,
    int? quantityMilli,
    int? unitPriceMinor,
    int? costPriceMinor,
    int? lineTotalMinor,
  }) => SaleItem(
    id: id ?? this.id,
    saleId: saleId ?? this.saleId,
    productId: productId ?? this.productId,
    quantityMilli: quantityMilli ?? this.quantityMilli,
    unitPriceMinor: unitPriceMinor ?? this.unitPriceMinor,
    costPriceMinor: costPriceMinor ?? this.costPriceMinor,
    lineTotalMinor: lineTotalMinor ?? this.lineTotalMinor,
  );
  SaleItem copyWithCompanion(SaleItemsCompanion data) {
    return SaleItem(
      id: data.id.present ? data.id.value : this.id,
      saleId: data.saleId.present ? data.saleId.value : this.saleId,
      productId: data.productId.present ? data.productId.value : this.productId,
      quantityMilli:
          data.quantityMilli.present
              ? data.quantityMilli.value
              : this.quantityMilli,
      unitPriceMinor:
          data.unitPriceMinor.present
              ? data.unitPriceMinor.value
              : this.unitPriceMinor,
      costPriceMinor:
          data.costPriceMinor.present
              ? data.costPriceMinor.value
              : this.costPriceMinor,
      lineTotalMinor:
          data.lineTotalMinor.present
              ? data.lineTotalMinor.value
              : this.lineTotalMinor,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SaleItem(')
          ..write('id: $id, ')
          ..write('saleId: $saleId, ')
          ..write('productId: $productId, ')
          ..write('quantityMilli: $quantityMilli, ')
          ..write('unitPriceMinor: $unitPriceMinor, ')
          ..write('costPriceMinor: $costPriceMinor, ')
          ..write('lineTotalMinor: $lineTotalMinor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    saleId,
    productId,
    quantityMilli,
    unitPriceMinor,
    costPriceMinor,
    lineTotalMinor,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SaleItem &&
          other.id == this.id &&
          other.saleId == this.saleId &&
          other.productId == this.productId &&
          other.quantityMilli == this.quantityMilli &&
          other.unitPriceMinor == this.unitPriceMinor &&
          other.costPriceMinor == this.costPriceMinor &&
          other.lineTotalMinor == this.lineTotalMinor);
}

class SaleItemsCompanion extends UpdateCompanion<SaleItem> {
  final Value<String> id;
  final Value<String> saleId;
  final Value<String> productId;
  final Value<int> quantityMilli;
  final Value<int> unitPriceMinor;
  final Value<int> costPriceMinor;
  final Value<int> lineTotalMinor;
  final Value<int> rowid;
  const SaleItemsCompanion({
    this.id = const Value.absent(),
    this.saleId = const Value.absent(),
    this.productId = const Value.absent(),
    this.quantityMilli = const Value.absent(),
    this.unitPriceMinor = const Value.absent(),
    this.costPriceMinor = const Value.absent(),
    this.lineTotalMinor = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SaleItemsCompanion.insert({
    required String id,
    required String saleId,
    required String productId,
    required int quantityMilli,
    required int unitPriceMinor,
    this.costPriceMinor = const Value.absent(),
    required int lineTotalMinor,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       saleId = Value(saleId),
       productId = Value(productId),
       quantityMilli = Value(quantityMilli),
       unitPriceMinor = Value(unitPriceMinor),
       lineTotalMinor = Value(lineTotalMinor);
  static Insertable<SaleItem> custom({
    Expression<String>? id,
    Expression<String>? saleId,
    Expression<String>? productId,
    Expression<int>? quantityMilli,
    Expression<int>? unitPriceMinor,
    Expression<int>? costPriceMinor,
    Expression<int>? lineTotalMinor,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (saleId != null) 'sale_id': saleId,
      if (productId != null) 'product_id': productId,
      if (quantityMilli != null) 'quantity_milli': quantityMilli,
      if (unitPriceMinor != null) 'unit_price_minor': unitPriceMinor,
      if (costPriceMinor != null) 'cost_price_minor': costPriceMinor,
      if (lineTotalMinor != null) 'line_total_minor': lineTotalMinor,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SaleItemsCompanion copyWith({
    Value<String>? id,
    Value<String>? saleId,
    Value<String>? productId,
    Value<int>? quantityMilli,
    Value<int>? unitPriceMinor,
    Value<int>? costPriceMinor,
    Value<int>? lineTotalMinor,
    Value<int>? rowid,
  }) {
    return SaleItemsCompanion(
      id: id ?? this.id,
      saleId: saleId ?? this.saleId,
      productId: productId ?? this.productId,
      quantityMilli: quantityMilli ?? this.quantityMilli,
      unitPriceMinor: unitPriceMinor ?? this.unitPriceMinor,
      costPriceMinor: costPriceMinor ?? this.costPriceMinor,
      lineTotalMinor: lineTotalMinor ?? this.lineTotalMinor,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (saleId.present) {
      map['sale_id'] = Variable<String>(saleId.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<String>(productId.value);
    }
    if (quantityMilli.present) {
      map['quantity_milli'] = Variable<int>(quantityMilli.value);
    }
    if (unitPriceMinor.present) {
      map['unit_price_minor'] = Variable<int>(unitPriceMinor.value);
    }
    if (costPriceMinor.present) {
      map['cost_price_minor'] = Variable<int>(costPriceMinor.value);
    }
    if (lineTotalMinor.present) {
      map['line_total_minor'] = Variable<int>(lineTotalMinor.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SaleItemsCompanion(')
          ..write('id: $id, ')
          ..write('saleId: $saleId, ')
          ..write('productId: $productId, ')
          ..write('quantityMilli: $quantityMilli, ')
          ..write('unitPriceMinor: $unitPriceMinor, ')
          ..write('costPriceMinor: $costPriceMinor, ')
          ..write('lineTotalMinor: $lineTotalMinor, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $StockMovementsTable extends StockMovements
    with TableInfo<$StockMovementsTable, StockMovement> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StockMovementsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _businessIdMeta = const VerificationMeta(
    'businessId',
  );
  @override
  late final GeneratedColumn<String> businessId = GeneratedColumn<String>(
    'business_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES businesses (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _productIdMeta = const VerificationMeta(
    'productId',
  );
  @override
  late final GeneratedColumn<String> productId = GeneratedColumn<String>(
    'product_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES products (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _quantityMilliMeta = const VerificationMeta(
    'quantityMilli',
  );
  @override
  late final GeneratedColumn<int> quantityMilli = GeneratedColumn<int>(
    'quantity_milli',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _unitCostMinorMeta = const VerificationMeta(
    'unitCostMinor',
  );
  @override
  late final GeneratedColumn<int> unitCostMinor = GeneratedColumn<int>(
    'unit_cost_minor',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _referenceIdMeta = const VerificationMeta(
    'referenceId',
  );
  @override
  late final GeneratedColumn<String> referenceId = GeneratedColumn<String>(
    'reference_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    businessId,
    productId,
    type,
    quantityMilli,
    unitCostMinor,
    referenceId,
    note,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'stock_movements';
  @override
  VerificationContext validateIntegrity(
    Insertable<StockMovement> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('business_id')) {
      context.handle(
        _businessIdMeta,
        businessId.isAcceptableOrUnknown(data['business_id']!, _businessIdMeta),
      );
    } else if (isInserting) {
      context.missing(_businessIdMeta);
    }
    if (data.containsKey('product_id')) {
      context.handle(
        _productIdMeta,
        productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta),
      );
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('quantity_milli')) {
      context.handle(
        _quantityMilliMeta,
        quantityMilli.isAcceptableOrUnknown(
          data['quantity_milli']!,
          _quantityMilliMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_quantityMilliMeta);
    }
    if (data.containsKey('unit_cost_minor')) {
      context.handle(
        _unitCostMinorMeta,
        unitCostMinor.isAcceptableOrUnknown(
          data['unit_cost_minor']!,
          _unitCostMinorMeta,
        ),
      );
    }
    if (data.containsKey('reference_id')) {
      context.handle(
        _referenceIdMeta,
        referenceId.isAcceptableOrUnknown(
          data['reference_id']!,
          _referenceIdMeta,
        ),
      );
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StockMovement map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StockMovement(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      businessId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}business_id'],
          )!,
      productId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}product_id'],
          )!,
      type:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}type'],
          )!,
      quantityMilli:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}quantity_milli'],
          )!,
      unitCostMinor: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}unit_cost_minor'],
      ),
      referenceId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}reference_id'],
      ),
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      ),
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
    );
  }

  @override
  $StockMovementsTable createAlias(String alias) {
    return $StockMovementsTable(attachedDatabase, alias);
  }
}

class StockMovement extends DataClass implements Insertable<StockMovement> {
  final String id;
  final String businessId;
  final String productId;
  final String type;
  final int quantityMilli;
  final int? unitCostMinor;
  final String? referenceId;
  final String? note;
  final DateTime createdAt;
  const StockMovement({
    required this.id,
    required this.businessId,
    required this.productId,
    required this.type,
    required this.quantityMilli,
    this.unitCostMinor,
    this.referenceId,
    this.note,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['business_id'] = Variable<String>(businessId);
    map['product_id'] = Variable<String>(productId);
    map['type'] = Variable<String>(type);
    map['quantity_milli'] = Variable<int>(quantityMilli);
    if (!nullToAbsent || unitCostMinor != null) {
      map['unit_cost_minor'] = Variable<int>(unitCostMinor);
    }
    if (!nullToAbsent || referenceId != null) {
      map['reference_id'] = Variable<String>(referenceId);
    }
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  StockMovementsCompanion toCompanion(bool nullToAbsent) {
    return StockMovementsCompanion(
      id: Value(id),
      businessId: Value(businessId),
      productId: Value(productId),
      type: Value(type),
      quantityMilli: Value(quantityMilli),
      unitCostMinor:
          unitCostMinor == null && nullToAbsent
              ? const Value.absent()
              : Value(unitCostMinor),
      referenceId:
          referenceId == null && nullToAbsent
              ? const Value.absent()
              : Value(referenceId),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      createdAt: Value(createdAt),
    );
  }

  factory StockMovement.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StockMovement(
      id: serializer.fromJson<String>(json['id']),
      businessId: serializer.fromJson<String>(json['businessId']),
      productId: serializer.fromJson<String>(json['productId']),
      type: serializer.fromJson<String>(json['type']),
      quantityMilli: serializer.fromJson<int>(json['quantityMilli']),
      unitCostMinor: serializer.fromJson<int?>(json['unitCostMinor']),
      referenceId: serializer.fromJson<String?>(json['referenceId']),
      note: serializer.fromJson<String?>(json['note']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'businessId': serializer.toJson<String>(businessId),
      'productId': serializer.toJson<String>(productId),
      'type': serializer.toJson<String>(type),
      'quantityMilli': serializer.toJson<int>(quantityMilli),
      'unitCostMinor': serializer.toJson<int?>(unitCostMinor),
      'referenceId': serializer.toJson<String?>(referenceId),
      'note': serializer.toJson<String?>(note),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  StockMovement copyWith({
    String? id,
    String? businessId,
    String? productId,
    String? type,
    int? quantityMilli,
    Value<int?> unitCostMinor = const Value.absent(),
    Value<String?> referenceId = const Value.absent(),
    Value<String?> note = const Value.absent(),
    DateTime? createdAt,
  }) => StockMovement(
    id: id ?? this.id,
    businessId: businessId ?? this.businessId,
    productId: productId ?? this.productId,
    type: type ?? this.type,
    quantityMilli: quantityMilli ?? this.quantityMilli,
    unitCostMinor:
        unitCostMinor.present ? unitCostMinor.value : this.unitCostMinor,
    referenceId: referenceId.present ? referenceId.value : this.referenceId,
    note: note.present ? note.value : this.note,
    createdAt: createdAt ?? this.createdAt,
  );
  StockMovement copyWithCompanion(StockMovementsCompanion data) {
    return StockMovement(
      id: data.id.present ? data.id.value : this.id,
      businessId:
          data.businessId.present ? data.businessId.value : this.businessId,
      productId: data.productId.present ? data.productId.value : this.productId,
      type: data.type.present ? data.type.value : this.type,
      quantityMilli:
          data.quantityMilli.present
              ? data.quantityMilli.value
              : this.quantityMilli,
      unitCostMinor:
          data.unitCostMinor.present
              ? data.unitCostMinor.value
              : this.unitCostMinor,
      referenceId:
          data.referenceId.present ? data.referenceId.value : this.referenceId,
      note: data.note.present ? data.note.value : this.note,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StockMovement(')
          ..write('id: $id, ')
          ..write('businessId: $businessId, ')
          ..write('productId: $productId, ')
          ..write('type: $type, ')
          ..write('quantityMilli: $quantityMilli, ')
          ..write('unitCostMinor: $unitCostMinor, ')
          ..write('referenceId: $referenceId, ')
          ..write('note: $note, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    businessId,
    productId,
    type,
    quantityMilli,
    unitCostMinor,
    referenceId,
    note,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StockMovement &&
          other.id == this.id &&
          other.businessId == this.businessId &&
          other.productId == this.productId &&
          other.type == this.type &&
          other.quantityMilli == this.quantityMilli &&
          other.unitCostMinor == this.unitCostMinor &&
          other.referenceId == this.referenceId &&
          other.note == this.note &&
          other.createdAt == this.createdAt);
}

class StockMovementsCompanion extends UpdateCompanion<StockMovement> {
  final Value<String> id;
  final Value<String> businessId;
  final Value<String> productId;
  final Value<String> type;
  final Value<int> quantityMilli;
  final Value<int?> unitCostMinor;
  final Value<String?> referenceId;
  final Value<String?> note;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const StockMovementsCompanion({
    this.id = const Value.absent(),
    this.businessId = const Value.absent(),
    this.productId = const Value.absent(),
    this.type = const Value.absent(),
    this.quantityMilli = const Value.absent(),
    this.unitCostMinor = const Value.absent(),
    this.referenceId = const Value.absent(),
    this.note = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  StockMovementsCompanion.insert({
    required String id,
    required String businessId,
    required String productId,
    required String type,
    required int quantityMilli,
    this.unitCostMinor = const Value.absent(),
    this.referenceId = const Value.absent(),
    this.note = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       businessId = Value(businessId),
       productId = Value(productId),
       type = Value(type),
       quantityMilli = Value(quantityMilli);
  static Insertable<StockMovement> custom({
    Expression<String>? id,
    Expression<String>? businessId,
    Expression<String>? productId,
    Expression<String>? type,
    Expression<int>? quantityMilli,
    Expression<int>? unitCostMinor,
    Expression<String>? referenceId,
    Expression<String>? note,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (businessId != null) 'business_id': businessId,
      if (productId != null) 'product_id': productId,
      if (type != null) 'type': type,
      if (quantityMilli != null) 'quantity_milli': quantityMilli,
      if (unitCostMinor != null) 'unit_cost_minor': unitCostMinor,
      if (referenceId != null) 'reference_id': referenceId,
      if (note != null) 'note': note,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  StockMovementsCompanion copyWith({
    Value<String>? id,
    Value<String>? businessId,
    Value<String>? productId,
    Value<String>? type,
    Value<int>? quantityMilli,
    Value<int?>? unitCostMinor,
    Value<String?>? referenceId,
    Value<String?>? note,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return StockMovementsCompanion(
      id: id ?? this.id,
      businessId: businessId ?? this.businessId,
      productId: productId ?? this.productId,
      type: type ?? this.type,
      quantityMilli: quantityMilli ?? this.quantityMilli,
      unitCostMinor: unitCostMinor ?? this.unitCostMinor,
      referenceId: referenceId ?? this.referenceId,
      note: note ?? this.note,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (businessId.present) {
      map['business_id'] = Variable<String>(businessId.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<String>(productId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (quantityMilli.present) {
      map['quantity_milli'] = Variable<int>(quantityMilli.value);
    }
    if (unitCostMinor.present) {
      map['unit_cost_minor'] = Variable<int>(unitCostMinor.value);
    }
    if (referenceId.present) {
      map['reference_id'] = Variable<String>(referenceId.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StockMovementsCompanion(')
          ..write('id: $id, ')
          ..write('businessId: $businessId, ')
          ..write('productId: $productId, ')
          ..write('type: $type, ')
          ..write('quantityMilli: $quantityMilli, ')
          ..write('unitCostMinor: $unitCostMinor, ')
          ..write('referenceId: $referenceId, ')
          ..write('note: $note, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $BusinessesTable businesses = $BusinessesTable(this);
  late final $CategoriesTable categories = $CategoriesTable(this);
  late final $ProductsTable products = $ProductsTable(this);
  late final $SalesTable sales = $SalesTable(this);
  late final $SaleItemsTable saleItems = $SaleItemsTable(this);
  late final $StockMovementsTable stockMovements = $StockMovementsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    businesses,
    categories,
    products,
    sales,
    saleItems,
    stockMovements,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'businesses',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('categories', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'businesses',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('products', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'categories',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('products', kind: UpdateKind.update)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'businesses',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('sales', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'sales',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('sale_items', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'businesses',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('stock_movements', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'products',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('stock_movements', kind: UpdateKind.delete)],
    ),
  ]);
}

typedef $$BusinessesTableCreateCompanionBuilder =
    BusinessesCompanion Function({
      required String id,
      required String name,
      Value<String?> phone,
      Value<String?> email,
      Value<String?> address,
      Value<String> currency,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });
typedef $$BusinessesTableUpdateCompanionBuilder =
    BusinessesCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String?> phone,
      Value<String?> email,
      Value<String?> address,
      Value<String> currency,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

final class $$BusinessesTableReferences
    extends BaseReferences<_$AppDatabase, $BusinessesTable, BusinessesData> {
  $$BusinessesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$CategoriesTable, List<Category>>
  _categoriesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.categories,
    aliasName: 'businesses__id__categories__business_id',
  );

  $$CategoriesTableProcessedTableManager get categoriesRefs {
    final manager = $$CategoriesTableTableManager(
      $_db,
      $_db.categories,
    ).filter((f) => f.businessId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_categoriesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$ProductsTable, List<Product>> _productsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.products,
    aliasName: 'businesses__id__products__business_id',
  );

  $$ProductsTableProcessedTableManager get productsRefs {
    final manager = $$ProductsTableTableManager(
      $_db,
      $_db.products,
    ).filter((f) => f.businessId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_productsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$SalesTable, List<Sale>> _salesRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.sales,
    aliasName: 'businesses__id__sales__business_id',
  );

  $$SalesTableProcessedTableManager get salesRefs {
    final manager = $$SalesTableTableManager(
      $_db,
      $_db.sales,
    ).filter((f) => f.businessId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_salesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$StockMovementsTable, List<StockMovement>>
  _stockMovementsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.stockMovements,
    aliasName: 'businesses__id__stock_movements__business_id',
  );

  $$StockMovementsTableProcessedTableManager get stockMovementsRefs {
    final manager = $$StockMovementsTableTableManager(
      $_db,
      $_db.stockMovements,
    ).filter((f) => f.businessId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_stockMovementsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$BusinessesTableFilterComposer
    extends Composer<_$AppDatabase, $BusinessesTable> {
  $$BusinessesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> categoriesRefs(
    Expression<bool> Function($$CategoriesTableFilterComposer f) f,
  ) {
    final $$CategoriesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.categories,
      getReferencedColumn: (t) => t.businessId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableFilterComposer(
            $db: $db,
            $table: $db.categories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> productsRefs(
    Expression<bool> Function($$ProductsTableFilterComposer f) f,
  ) {
    final $$ProductsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.products,
      getReferencedColumn: (t) => t.businessId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductsTableFilterComposer(
            $db: $db,
            $table: $db.products,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> salesRefs(
    Expression<bool> Function($$SalesTableFilterComposer f) f,
  ) {
    final $$SalesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.sales,
      getReferencedColumn: (t) => t.businessId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SalesTableFilterComposer(
            $db: $db,
            $table: $db.sales,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> stockMovementsRefs(
    Expression<bool> Function($$StockMovementsTableFilterComposer f) f,
  ) {
    final $$StockMovementsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.stockMovements,
      getReferencedColumn: (t) => t.businessId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StockMovementsTableFilterComposer(
            $db: $db,
            $table: $db.stockMovements,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$BusinessesTableOrderingComposer
    extends Composer<_$AppDatabase, $BusinessesTable> {
  $$BusinessesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$BusinessesTableAnnotationComposer
    extends Composer<_$AppDatabase, $BusinessesTable> {
  $$BusinessesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get currency =>
      $composableBuilder(column: $table.currency, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  Expression<T> categoriesRefs<T extends Object>(
    Expression<T> Function($$CategoriesTableAnnotationComposer a) f,
  ) {
    final $$CategoriesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.categories,
      getReferencedColumn: (t) => t.businessId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableAnnotationComposer(
            $db: $db,
            $table: $db.categories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> productsRefs<T extends Object>(
    Expression<T> Function($$ProductsTableAnnotationComposer a) f,
  ) {
    final $$ProductsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.products,
      getReferencedColumn: (t) => t.businessId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductsTableAnnotationComposer(
            $db: $db,
            $table: $db.products,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> salesRefs<T extends Object>(
    Expression<T> Function($$SalesTableAnnotationComposer a) f,
  ) {
    final $$SalesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.sales,
      getReferencedColumn: (t) => t.businessId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SalesTableAnnotationComposer(
            $db: $db,
            $table: $db.sales,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> stockMovementsRefs<T extends Object>(
    Expression<T> Function($$StockMovementsTableAnnotationComposer a) f,
  ) {
    final $$StockMovementsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.stockMovements,
      getReferencedColumn: (t) => t.businessId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StockMovementsTableAnnotationComposer(
            $db: $db,
            $table: $db.stockMovements,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$BusinessesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $BusinessesTable,
          BusinessesData,
          $$BusinessesTableFilterComposer,
          $$BusinessesTableOrderingComposer,
          $$BusinessesTableAnnotationComposer,
          $$BusinessesTableCreateCompanionBuilder,
          $$BusinessesTableUpdateCompanionBuilder,
          (BusinessesData, $$BusinessesTableReferences),
          BusinessesData,
          PrefetchHooks Function({
            bool categoriesRefs,
            bool productsRefs,
            bool salesRefs,
            bool stockMovementsRefs,
          })
        > {
  $$BusinessesTableTableManager(_$AppDatabase db, $BusinessesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$BusinessesTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$BusinessesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$BusinessesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> phone = const Value.absent(),
                Value<String?> email = const Value.absent(),
                Value<String?> address = const Value.absent(),
                Value<String> currency = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BusinessesCompanion(
                id: id,
                name: name,
                phone: phone,
                email: email,
                address: address,
                currency: currency,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                Value<String?> phone = const Value.absent(),
                Value<String?> email = const Value.absent(),
                Value<String?> address = const Value.absent(),
                Value<String> currency = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BusinessesCompanion.insert(
                id: id,
                name: name,
                phone: phone,
                email: email,
                address: address,
                currency: currency,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable<$BusinessesTable, BusinessesData>(table),
                          $$BusinessesTableReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: ({
            categoriesRefs = false,
            productsRefs = false,
            salesRefs = false,
            stockMovementsRefs = false,
          }) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (categoriesRefs) db.categories,
                if (productsRefs) db.products,
                if (salesRefs) db.sales,
                if (stockMovementsRefs) db.stockMovements,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (categoriesRefs)
                    await $_getPrefetchedDataByColumns<
                      BusinessesData,
                      $BusinessesTable,
                      Category,
                      $CategoriesTable
                    >(
                      currentTable: table,
                      referencedTable: $$BusinessesTableReferences
                          ._categoriesRefsTable(db),
                      managerFromTypedResult:
                          (p0) =>
                              $$BusinessesTableReferences(
                                db,
                                table,
                                p0,
                              ).categoriesRefs,
                      currentColumn: 'id',
                      referencedColumn: 'business_id',
                      typedResults: items,
                    ),
                  if (productsRefs)
                    await $_getPrefetchedDataByColumns<
                      BusinessesData,
                      $BusinessesTable,
                      Product,
                      $ProductsTable
                    >(
                      currentTable: table,
                      referencedTable: $$BusinessesTableReferences
                          ._productsRefsTable(db),
                      managerFromTypedResult:
                          (p0) =>
                              $$BusinessesTableReferences(
                                db,
                                table,
                                p0,
                              ).productsRefs,
                      currentColumn: 'id',
                      referencedColumn: 'business_id',
                      typedResults: items,
                    ),
                  if (salesRefs)
                    await $_getPrefetchedDataByColumns<
                      BusinessesData,
                      $BusinessesTable,
                      Sale,
                      $SalesTable
                    >(
                      currentTable: table,
                      referencedTable: $$BusinessesTableReferences
                          ._salesRefsTable(db),
                      managerFromTypedResult:
                          (p0) =>
                              $$BusinessesTableReferences(
                                db,
                                table,
                                p0,
                              ).salesRefs,
                      currentColumn: 'id',
                      referencedColumn: 'business_id',
                      typedResults: items,
                    ),
                  if (stockMovementsRefs)
                    await $_getPrefetchedDataByColumns<
                      BusinessesData,
                      $BusinessesTable,
                      StockMovement,
                      $StockMovementsTable
                    >(
                      currentTable: table,
                      referencedTable: $$BusinessesTableReferences
                          ._stockMovementsRefsTable(db),
                      managerFromTypedResult:
                          (p0) =>
                              $$BusinessesTableReferences(
                                db,
                                table,
                                p0,
                              ).stockMovementsRefs,
                      currentColumn: 'id',
                      referencedColumn: 'business_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$BusinessesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $BusinessesTable,
      BusinessesData,
      $$BusinessesTableFilterComposer,
      $$BusinessesTableOrderingComposer,
      $$BusinessesTableAnnotationComposer,
      $$BusinessesTableCreateCompanionBuilder,
      $$BusinessesTableUpdateCompanionBuilder,
      (BusinessesData, $$BusinessesTableReferences),
      BusinessesData,
      PrefetchHooks Function({
        bool categoriesRefs,
        bool productsRefs,
        bool salesRefs,
        bool stockMovementsRefs,
      })
    >;
typedef $$CategoriesTableCreateCompanionBuilder =
    CategoriesCompanion Function({
      required String id,
      required String businessId,
      required String name,
      Value<String?> description,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });
typedef $$CategoriesTableUpdateCompanionBuilder =
    CategoriesCompanion Function({
      Value<String> id,
      Value<String> businessId,
      Value<String> name,
      Value<String?> description,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

final class $$CategoriesTableReferences
    extends BaseReferences<_$AppDatabase, $CategoriesTable, Category> {
  $$CategoriesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $BusinessesTable _businessIdTable(_$AppDatabase db) =>
      db.businesses.createAlias('categories__business_id__businesses__id');

  $$BusinessesTableProcessedTableManager get businessId {
    final $_column = $_itemColumn<String>('business_id')!;

    final manager = $$BusinessesTableTableManager(
      $_db,
      $_db.businesses,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_businessIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$ProductsTable, List<Product>> _productsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.products,
    aliasName: 'categories__id__products__category_id',
  );

  $$ProductsTableProcessedTableManager get productsRefs {
    final manager = $$ProductsTableTableManager(
      $_db,
      $_db.products,
    ).filter((f) => f.categoryId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_productsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$CategoriesTableFilterComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$BusinessesTableFilterComposer get businessId {
    final $$BusinessesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.businessId,
      referencedTable: $db.businesses,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BusinessesTableFilterComposer(
            $db: $db,
            $table: $db.businesses,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> productsRefs(
    Expression<bool> Function($$ProductsTableFilterComposer f) f,
  ) {
    final $$ProductsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.products,
      getReferencedColumn: (t) => t.categoryId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductsTableFilterComposer(
            $db: $db,
            $table: $db.products,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CategoriesTableOrderingComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$BusinessesTableOrderingComposer get businessId {
    final $$BusinessesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.businessId,
      referencedTable: $db.businesses,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BusinessesTableOrderingComposer(
            $db: $db,
            $table: $db.businesses,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$CategoriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$BusinessesTableAnnotationComposer get businessId {
    final $$BusinessesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.businessId,
      referencedTable: $db.businesses,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BusinessesTableAnnotationComposer(
            $db: $db,
            $table: $db.businesses,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> productsRefs<T extends Object>(
    Expression<T> Function($$ProductsTableAnnotationComposer a) f,
  ) {
    final $$ProductsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.products,
      getReferencedColumn: (t) => t.categoryId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductsTableAnnotationComposer(
            $db: $db,
            $table: $db.products,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CategoriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CategoriesTable,
          Category,
          $$CategoriesTableFilterComposer,
          $$CategoriesTableOrderingComposer,
          $$CategoriesTableAnnotationComposer,
          $$CategoriesTableCreateCompanionBuilder,
          $$CategoriesTableUpdateCompanionBuilder,
          (Category, $$CategoriesTableReferences),
          Category,
          PrefetchHooks Function({bool businessId, bool productsRefs})
        > {
  $$CategoriesTableTableManager(_$AppDatabase db, $CategoriesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$CategoriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$CategoriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$CategoriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> businessId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CategoriesCompanion(
                id: id,
                businessId: businessId,
                name: name,
                description: description,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String businessId,
                required String name,
                Value<String?> description = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CategoriesCompanion.insert(
                id: id,
                businessId: businessId,
                name: name,
                description: description,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable<$CategoriesTable, Category>(table),
                          $$CategoriesTableReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: ({businessId = false, productsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (productsRefs) db.products],
              addJoins: <
                T extends TableManagerState<
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic
                >
              >(state) {
                if (businessId) {
                  state =
                      state.withJoin(
                            currentTable: table,
                            currentColumn: table.businessId,
                            referencedTable: $$CategoriesTableReferences
                                ._businessIdTable(db),
                            referencedColumn:
                                $$CategoriesTableReferences
                                    ._businessIdTable(db)
                                    .id,
                          )
                          as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (productsRefs)
                    await $_getPrefetchedDataByColumns<
                      Category,
                      $CategoriesTable,
                      Product,
                      $ProductsTable
                    >(
                      currentTable: table,
                      referencedTable: $$CategoriesTableReferences
                          ._productsRefsTable(db),
                      managerFromTypedResult:
                          (p0) =>
                              $$CategoriesTableReferences(
                                db,
                                table,
                                p0,
                              ).productsRefs,
                      currentColumn: 'id',
                      referencedColumn: 'category_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$CategoriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CategoriesTable,
      Category,
      $$CategoriesTableFilterComposer,
      $$CategoriesTableOrderingComposer,
      $$CategoriesTableAnnotationComposer,
      $$CategoriesTableCreateCompanionBuilder,
      $$CategoriesTableUpdateCompanionBuilder,
      (Category, $$CategoriesTableReferences),
      Category,
      PrefetchHooks Function({bool businessId, bool productsRefs})
    >;
typedef $$ProductsTableCreateCompanionBuilder =
    ProductsCompanion Function({
      required String id,
      required String businessId,
      Value<String?> categoryId,
      required String name,
      Value<String?> sku,
      Value<String?> barcode,
      Value<int> sellingPriceMinor,
      Value<int> costPriceMinor,
      Value<int> reorderLevelMilli,
      Value<String> unit,
      Value<bool> isActive,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });
typedef $$ProductsTableUpdateCompanionBuilder =
    ProductsCompanion Function({
      Value<String> id,
      Value<String> businessId,
      Value<String?> categoryId,
      Value<String> name,
      Value<String?> sku,
      Value<String?> barcode,
      Value<int> sellingPriceMinor,
      Value<int> costPriceMinor,
      Value<int> reorderLevelMilli,
      Value<String> unit,
      Value<bool> isActive,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });

final class $$ProductsTableReferences
    extends BaseReferences<_$AppDatabase, $ProductsTable, Product> {
  $$ProductsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $BusinessesTable _businessIdTable(_$AppDatabase db) =>
      db.businesses.createAlias('products__business_id__businesses__id');

  $$BusinessesTableProcessedTableManager get businessId {
    final $_column = $_itemColumn<String>('business_id')!;

    final manager = $$BusinessesTableTableManager(
      $_db,
      $_db.businesses,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_businessIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $CategoriesTable _categoryIdTable(_$AppDatabase db) =>
      db.categories.createAlias('products__category_id__categories__id');

  $$CategoriesTableProcessedTableManager? get categoryId {
    final $_column = $_itemColumn<String>('category_id');
    if ($_column == null) return null;
    final manager = $$CategoriesTableTableManager(
      $_db,
      $_db.categories,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_categoryIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$SaleItemsTable, List<SaleItem>>
  _saleItemsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.saleItems,
    aliasName: 'products__id__sale_items__product_id',
  );

  $$SaleItemsTableProcessedTableManager get saleItemsRefs {
    final manager = $$SaleItemsTableTableManager(
      $_db,
      $_db.saleItems,
    ).filter((f) => f.productId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_saleItemsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$StockMovementsTable, List<StockMovement>>
  _stockMovementsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.stockMovements,
    aliasName: 'products__id__stock_movements__product_id',
  );

  $$StockMovementsTableProcessedTableManager get stockMovementsRefs {
    final manager = $$StockMovementsTableTableManager(
      $_db,
      $_db.stockMovements,
    ).filter((f) => f.productId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_stockMovementsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ProductsTableFilterComposer
    extends Composer<_$AppDatabase, $ProductsTable> {
  $$ProductsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sku => $composableBuilder(
    column: $table.sku,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get barcode => $composableBuilder(
    column: $table.barcode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sellingPriceMinor => $composableBuilder(
    column: $table.sellingPriceMinor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get costPriceMinor => $composableBuilder(
    column: $table.costPriceMinor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get reorderLevelMilli => $composableBuilder(
    column: $table.reorderLevelMilli,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$BusinessesTableFilterComposer get businessId {
    final $$BusinessesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.businessId,
      referencedTable: $db.businesses,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BusinessesTableFilterComposer(
            $db: $db,
            $table: $db.businesses,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$CategoriesTableFilterComposer get categoryId {
    final $$CategoriesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categories,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableFilterComposer(
            $db: $db,
            $table: $db.categories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> saleItemsRefs(
    Expression<bool> Function($$SaleItemsTableFilterComposer f) f,
  ) {
    final $$SaleItemsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.saleItems,
      getReferencedColumn: (t) => t.productId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SaleItemsTableFilterComposer(
            $db: $db,
            $table: $db.saleItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> stockMovementsRefs(
    Expression<bool> Function($$StockMovementsTableFilterComposer f) f,
  ) {
    final $$StockMovementsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.stockMovements,
      getReferencedColumn: (t) => t.productId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StockMovementsTableFilterComposer(
            $db: $db,
            $table: $db.stockMovements,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ProductsTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductsTable> {
  $$ProductsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sku => $composableBuilder(
    column: $table.sku,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get barcode => $composableBuilder(
    column: $table.barcode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sellingPriceMinor => $composableBuilder(
    column: $table.sellingPriceMinor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get costPriceMinor => $composableBuilder(
    column: $table.costPriceMinor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get reorderLevelMilli => $composableBuilder(
    column: $table.reorderLevelMilli,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$BusinessesTableOrderingComposer get businessId {
    final $$BusinessesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.businessId,
      referencedTable: $db.businesses,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BusinessesTableOrderingComposer(
            $db: $db,
            $table: $db.businesses,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$CategoriesTableOrderingComposer get categoryId {
    final $$CategoriesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categories,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableOrderingComposer(
            $db: $db,
            $table: $db.categories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ProductsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductsTable> {
  $$ProductsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get sku =>
      $composableBuilder(column: $table.sku, builder: (column) => column);

  GeneratedColumn<String> get barcode =>
      $composableBuilder(column: $table.barcode, builder: (column) => column);

  GeneratedColumn<int> get sellingPriceMinor => $composableBuilder(
    column: $table.sellingPriceMinor,
    builder: (column) => column,
  );

  GeneratedColumn<int> get costPriceMinor => $composableBuilder(
    column: $table.costPriceMinor,
    builder: (column) => column,
  );

  GeneratedColumn<int> get reorderLevelMilli => $composableBuilder(
    column: $table.reorderLevelMilli,
    builder: (column) => column,
  );

  GeneratedColumn<String> get unit =>
      $composableBuilder(column: $table.unit, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$BusinessesTableAnnotationComposer get businessId {
    final $$BusinessesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.businessId,
      referencedTable: $db.businesses,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BusinessesTableAnnotationComposer(
            $db: $db,
            $table: $db.businesses,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$CategoriesTableAnnotationComposer get categoryId {
    final $$CategoriesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categories,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableAnnotationComposer(
            $db: $db,
            $table: $db.categories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> saleItemsRefs<T extends Object>(
    Expression<T> Function($$SaleItemsTableAnnotationComposer a) f,
  ) {
    final $$SaleItemsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.saleItems,
      getReferencedColumn: (t) => t.productId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SaleItemsTableAnnotationComposer(
            $db: $db,
            $table: $db.saleItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> stockMovementsRefs<T extends Object>(
    Expression<T> Function($$StockMovementsTableAnnotationComposer a) f,
  ) {
    final $$StockMovementsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.stockMovements,
      getReferencedColumn: (t) => t.productId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StockMovementsTableAnnotationComposer(
            $db: $db,
            $table: $db.stockMovements,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ProductsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProductsTable,
          Product,
          $$ProductsTableFilterComposer,
          $$ProductsTableOrderingComposer,
          $$ProductsTableAnnotationComposer,
          $$ProductsTableCreateCompanionBuilder,
          $$ProductsTableUpdateCompanionBuilder,
          (Product, $$ProductsTableReferences),
          Product,
          PrefetchHooks Function({
            bool businessId,
            bool categoryId,
            bool saleItemsRefs,
            bool stockMovementsRefs,
          })
        > {
  $$ProductsTableTableManager(_$AppDatabase db, $ProductsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$ProductsTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$ProductsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$ProductsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> businessId = const Value.absent(),
                Value<String?> categoryId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> sku = const Value.absent(),
                Value<String?> barcode = const Value.absent(),
                Value<int> sellingPriceMinor = const Value.absent(),
                Value<int> costPriceMinor = const Value.absent(),
                Value<int> reorderLevelMilli = const Value.absent(),
                Value<String> unit = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProductsCompanion(
                id: id,
                businessId: businessId,
                categoryId: categoryId,
                name: name,
                sku: sku,
                barcode: barcode,
                sellingPriceMinor: sellingPriceMinor,
                costPriceMinor: costPriceMinor,
                reorderLevelMilli: reorderLevelMilli,
                unit: unit,
                isActive: isActive,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String businessId,
                Value<String?> categoryId = const Value.absent(),
                required String name,
                Value<String?> sku = const Value.absent(),
                Value<String?> barcode = const Value.absent(),
                Value<int> sellingPriceMinor = const Value.absent(),
                Value<int> costPriceMinor = const Value.absent(),
                Value<int> reorderLevelMilli = const Value.absent(),
                Value<String> unit = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProductsCompanion.insert(
                id: id,
                businessId: businessId,
                categoryId: categoryId,
                name: name,
                sku: sku,
                barcode: barcode,
                sellingPriceMinor: sellingPriceMinor,
                costPriceMinor: costPriceMinor,
                reorderLevelMilli: reorderLevelMilli,
                unit: unit,
                isActive: isActive,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable<$ProductsTable, Product>(table),
                          $$ProductsTableReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: ({
            businessId = false,
            categoryId = false,
            saleItemsRefs = false,
            stockMovementsRefs = false,
          }) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (saleItemsRefs) db.saleItems,
                if (stockMovementsRefs) db.stockMovements,
              ],
              addJoins: <
                T extends TableManagerState<
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic
                >
              >(state) {
                if (businessId) {
                  state =
                      state.withJoin(
                            currentTable: table,
                            currentColumn: table.businessId,
                            referencedTable: $$ProductsTableReferences
                                ._businessIdTable(db),
                            referencedColumn:
                                $$ProductsTableReferences
                                    ._businessIdTable(db)
                                    .id,
                          )
                          as T;
                }
                if (categoryId) {
                  state =
                      state.withJoin(
                            currentTable: table,
                            currentColumn: table.categoryId,
                            referencedTable: $$ProductsTableReferences
                                ._categoryIdTable(db),
                            referencedColumn:
                                $$ProductsTableReferences
                                    ._categoryIdTable(db)
                                    .id,
                          )
                          as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (saleItemsRefs)
                    await $_getPrefetchedDataByColumns<
                      Product,
                      $ProductsTable,
                      SaleItem,
                      $SaleItemsTable
                    >(
                      currentTable: table,
                      referencedTable: $$ProductsTableReferences
                          ._saleItemsRefsTable(db),
                      managerFromTypedResult:
                          (p0) =>
                              $$ProductsTableReferences(
                                db,
                                table,
                                p0,
                              ).saleItemsRefs,
                      currentColumn: 'id',
                      referencedColumn: 'product_id',
                      typedResults: items,
                    ),
                  if (stockMovementsRefs)
                    await $_getPrefetchedDataByColumns<
                      Product,
                      $ProductsTable,
                      StockMovement,
                      $StockMovementsTable
                    >(
                      currentTable: table,
                      referencedTable: $$ProductsTableReferences
                          ._stockMovementsRefsTable(db),
                      managerFromTypedResult:
                          (p0) =>
                              $$ProductsTableReferences(
                                db,
                                table,
                                p0,
                              ).stockMovementsRefs,
                      currentColumn: 'id',
                      referencedColumn: 'product_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$ProductsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProductsTable,
      Product,
      $$ProductsTableFilterComposer,
      $$ProductsTableOrderingComposer,
      $$ProductsTableAnnotationComposer,
      $$ProductsTableCreateCompanionBuilder,
      $$ProductsTableUpdateCompanionBuilder,
      (Product, $$ProductsTableReferences),
      Product,
      PrefetchHooks Function({
        bool businessId,
        bool categoryId,
        bool saleItemsRefs,
        bool stockMovementsRefs,
      })
    >;
typedef $$SalesTableCreateCompanionBuilder =
    SalesCompanion Function({
      required String id,
      required String businessId,
      Value<int> totalAmountMinor,
      Value<String?> paymentMethod,
      Value<String> status,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });
typedef $$SalesTableUpdateCompanionBuilder =
    SalesCompanion Function({
      Value<String> id,
      Value<String> businessId,
      Value<int> totalAmountMinor,
      Value<String?> paymentMethod,
      Value<String> status,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

final class $$SalesTableReferences
    extends BaseReferences<_$AppDatabase, $SalesTable, Sale> {
  $$SalesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $BusinessesTable _businessIdTable(_$AppDatabase db) =>
      db.businesses.createAlias('sales__business_id__businesses__id');

  $$BusinessesTableProcessedTableManager get businessId {
    final $_column = $_itemColumn<String>('business_id')!;

    final manager = $$BusinessesTableTableManager(
      $_db,
      $_db.businesses,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_businessIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$SaleItemsTable, List<SaleItem>>
  _saleItemsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.saleItems,
    aliasName: 'sales__id__sale_items__sale_id',
  );

  $$SaleItemsTableProcessedTableManager get saleItemsRefs {
    final manager = $$SaleItemsTableTableManager(
      $_db,
      $_db.saleItems,
    ).filter((f) => f.saleId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_saleItemsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$SalesTableFilterComposer extends Composer<_$AppDatabase, $SalesTable> {
  $$SalesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalAmountMinor => $composableBuilder(
    column: $table.totalAmountMinor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get paymentMethod => $composableBuilder(
    column: $table.paymentMethod,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$BusinessesTableFilterComposer get businessId {
    final $$BusinessesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.businessId,
      referencedTable: $db.businesses,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BusinessesTableFilterComposer(
            $db: $db,
            $table: $db.businesses,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> saleItemsRefs(
    Expression<bool> Function($$SaleItemsTableFilterComposer f) f,
  ) {
    final $$SaleItemsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.saleItems,
      getReferencedColumn: (t) => t.saleId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SaleItemsTableFilterComposer(
            $db: $db,
            $table: $db.saleItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$SalesTableOrderingComposer
    extends Composer<_$AppDatabase, $SalesTable> {
  $$SalesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalAmountMinor => $composableBuilder(
    column: $table.totalAmountMinor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get paymentMethod => $composableBuilder(
    column: $table.paymentMethod,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$BusinessesTableOrderingComposer get businessId {
    final $$BusinessesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.businessId,
      referencedTable: $db.businesses,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BusinessesTableOrderingComposer(
            $db: $db,
            $table: $db.businesses,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SalesTableAnnotationComposer
    extends Composer<_$AppDatabase, $SalesTable> {
  $$SalesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get totalAmountMinor => $composableBuilder(
    column: $table.totalAmountMinor,
    builder: (column) => column,
  );

  GeneratedColumn<String> get paymentMethod => $composableBuilder(
    column: $table.paymentMethod,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$BusinessesTableAnnotationComposer get businessId {
    final $$BusinessesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.businessId,
      referencedTable: $db.businesses,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BusinessesTableAnnotationComposer(
            $db: $db,
            $table: $db.businesses,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> saleItemsRefs<T extends Object>(
    Expression<T> Function($$SaleItemsTableAnnotationComposer a) f,
  ) {
    final $$SaleItemsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.saleItems,
      getReferencedColumn: (t) => t.saleId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SaleItemsTableAnnotationComposer(
            $db: $db,
            $table: $db.saleItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$SalesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SalesTable,
          Sale,
          $$SalesTableFilterComposer,
          $$SalesTableOrderingComposer,
          $$SalesTableAnnotationComposer,
          $$SalesTableCreateCompanionBuilder,
          $$SalesTableUpdateCompanionBuilder,
          (Sale, $$SalesTableReferences),
          Sale,
          PrefetchHooks Function({bool businessId, bool saleItemsRefs})
        > {
  $$SalesTableTableManager(_$AppDatabase db, $SalesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$SalesTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$SalesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$SalesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> businessId = const Value.absent(),
                Value<int> totalAmountMinor = const Value.absent(),
                Value<String?> paymentMethod = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SalesCompanion(
                id: id,
                businessId: businessId,
                totalAmountMinor: totalAmountMinor,
                paymentMethod: paymentMethod,
                status: status,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String businessId,
                Value<int> totalAmountMinor = const Value.absent(),
                Value<String?> paymentMethod = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SalesCompanion.insert(
                id: id,
                businessId: businessId,
                totalAmountMinor: totalAmountMinor,
                paymentMethod: paymentMethod,
                status: status,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable<$SalesTable, Sale>(table),
                          $$SalesTableReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: ({businessId = false, saleItemsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (saleItemsRefs) db.saleItems],
              addJoins: <
                T extends TableManagerState<
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic
                >
              >(state) {
                if (businessId) {
                  state =
                      state.withJoin(
                            currentTable: table,
                            currentColumn: table.businessId,
                            referencedTable: $$SalesTableReferences
                                ._businessIdTable(db),
                            referencedColumn:
                                $$SalesTableReferences._businessIdTable(db).id,
                          )
                          as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (saleItemsRefs)
                    await $_getPrefetchedDataByColumns<
                      Sale,
                      $SalesTable,
                      SaleItem,
                      $SaleItemsTable
                    >(
                      currentTable: table,
                      referencedTable: $$SalesTableReferences
                          ._saleItemsRefsTable(db),
                      managerFromTypedResult:
                          (p0) =>
                              $$SalesTableReferences(
                                db,
                                table,
                                p0,
                              ).saleItemsRefs,
                      currentColumn: 'id',
                      referencedColumn: 'sale_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$SalesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SalesTable,
      Sale,
      $$SalesTableFilterComposer,
      $$SalesTableOrderingComposer,
      $$SalesTableAnnotationComposer,
      $$SalesTableCreateCompanionBuilder,
      $$SalesTableUpdateCompanionBuilder,
      (Sale, $$SalesTableReferences),
      Sale,
      PrefetchHooks Function({bool businessId, bool saleItemsRefs})
    >;
typedef $$SaleItemsTableCreateCompanionBuilder =
    SaleItemsCompanion Function({
      required String id,
      required String saleId,
      required String productId,
      required int quantityMilli,
      required int unitPriceMinor,
      Value<int> costPriceMinor,
      required int lineTotalMinor,
      Value<int> rowid,
    });
typedef $$SaleItemsTableUpdateCompanionBuilder =
    SaleItemsCompanion Function({
      Value<String> id,
      Value<String> saleId,
      Value<String> productId,
      Value<int> quantityMilli,
      Value<int> unitPriceMinor,
      Value<int> costPriceMinor,
      Value<int> lineTotalMinor,
      Value<int> rowid,
    });

final class $$SaleItemsTableReferences
    extends BaseReferences<_$AppDatabase, $SaleItemsTable, SaleItem> {
  $$SaleItemsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $SalesTable _saleIdTable(_$AppDatabase db) =>
      db.sales.createAlias('sale_items__sale_id__sales__id');

  $$SalesTableProcessedTableManager get saleId {
    final $_column = $_itemColumn<String>('sale_id')!;

    final manager = $$SalesTableTableManager(
      $_db,
      $_db.sales,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_saleIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $ProductsTable _productIdTable(_$AppDatabase db) =>
      db.products.createAlias('sale_items__product_id__products__id');

  $$ProductsTableProcessedTableManager get productId {
    final $_column = $_itemColumn<String>('product_id')!;

    final manager = $$ProductsTableTableManager(
      $_db,
      $_db.products,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_productIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$SaleItemsTableFilterComposer
    extends Composer<_$AppDatabase, $SaleItemsTable> {
  $$SaleItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get quantityMilli => $composableBuilder(
    column: $table.quantityMilli,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get unitPriceMinor => $composableBuilder(
    column: $table.unitPriceMinor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get costPriceMinor => $composableBuilder(
    column: $table.costPriceMinor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get lineTotalMinor => $composableBuilder(
    column: $table.lineTotalMinor,
    builder: (column) => ColumnFilters(column),
  );

  $$SalesTableFilterComposer get saleId {
    final $$SalesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.saleId,
      referencedTable: $db.sales,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SalesTableFilterComposer(
            $db: $db,
            $table: $db.sales,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProductsTableFilterComposer get productId {
    final $$ProductsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.productId,
      referencedTable: $db.products,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductsTableFilterComposer(
            $db: $db,
            $table: $db.products,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SaleItemsTableOrderingComposer
    extends Composer<_$AppDatabase, $SaleItemsTable> {
  $$SaleItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get quantityMilli => $composableBuilder(
    column: $table.quantityMilli,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get unitPriceMinor => $composableBuilder(
    column: $table.unitPriceMinor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get costPriceMinor => $composableBuilder(
    column: $table.costPriceMinor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get lineTotalMinor => $composableBuilder(
    column: $table.lineTotalMinor,
    builder: (column) => ColumnOrderings(column),
  );

  $$SalesTableOrderingComposer get saleId {
    final $$SalesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.saleId,
      referencedTable: $db.sales,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SalesTableOrderingComposer(
            $db: $db,
            $table: $db.sales,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProductsTableOrderingComposer get productId {
    final $$ProductsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.productId,
      referencedTable: $db.products,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductsTableOrderingComposer(
            $db: $db,
            $table: $db.products,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SaleItemsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SaleItemsTable> {
  $$SaleItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get quantityMilli => $composableBuilder(
    column: $table.quantityMilli,
    builder: (column) => column,
  );

  GeneratedColumn<int> get unitPriceMinor => $composableBuilder(
    column: $table.unitPriceMinor,
    builder: (column) => column,
  );

  GeneratedColumn<int> get costPriceMinor => $composableBuilder(
    column: $table.costPriceMinor,
    builder: (column) => column,
  );

  GeneratedColumn<int> get lineTotalMinor => $composableBuilder(
    column: $table.lineTotalMinor,
    builder: (column) => column,
  );

  $$SalesTableAnnotationComposer get saleId {
    final $$SalesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.saleId,
      referencedTable: $db.sales,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SalesTableAnnotationComposer(
            $db: $db,
            $table: $db.sales,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProductsTableAnnotationComposer get productId {
    final $$ProductsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.productId,
      referencedTable: $db.products,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductsTableAnnotationComposer(
            $db: $db,
            $table: $db.products,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SaleItemsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SaleItemsTable,
          SaleItem,
          $$SaleItemsTableFilterComposer,
          $$SaleItemsTableOrderingComposer,
          $$SaleItemsTableAnnotationComposer,
          $$SaleItemsTableCreateCompanionBuilder,
          $$SaleItemsTableUpdateCompanionBuilder,
          (SaleItem, $$SaleItemsTableReferences),
          SaleItem,
          PrefetchHooks Function({bool saleId, bool productId})
        > {
  $$SaleItemsTableTableManager(_$AppDatabase db, $SaleItemsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$SaleItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$SaleItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$SaleItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> saleId = const Value.absent(),
                Value<String> productId = const Value.absent(),
                Value<int> quantityMilli = const Value.absent(),
                Value<int> unitPriceMinor = const Value.absent(),
                Value<int> costPriceMinor = const Value.absent(),
                Value<int> lineTotalMinor = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SaleItemsCompanion(
                id: id,
                saleId: saleId,
                productId: productId,
                quantityMilli: quantityMilli,
                unitPriceMinor: unitPriceMinor,
                costPriceMinor: costPriceMinor,
                lineTotalMinor: lineTotalMinor,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String saleId,
                required String productId,
                required int quantityMilli,
                required int unitPriceMinor,
                Value<int> costPriceMinor = const Value.absent(),
                required int lineTotalMinor,
                Value<int> rowid = const Value.absent(),
              }) => SaleItemsCompanion.insert(
                id: id,
                saleId: saleId,
                productId: productId,
                quantityMilli: quantityMilli,
                unitPriceMinor: unitPriceMinor,
                costPriceMinor: costPriceMinor,
                lineTotalMinor: lineTotalMinor,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable<$SaleItemsTable, SaleItem>(table),
                          $$SaleItemsTableReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: ({saleId = false, productId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                T extends TableManagerState<
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic
                >
              >(state) {
                if (saleId) {
                  state =
                      state.withJoin(
                            currentTable: table,
                            currentColumn: table.saleId,
                            referencedTable: $$SaleItemsTableReferences
                                ._saleIdTable(db),
                            referencedColumn:
                                $$SaleItemsTableReferences._saleIdTable(db).id,
                          )
                          as T;
                }
                if (productId) {
                  state =
                      state.withJoin(
                            currentTable: table,
                            currentColumn: table.productId,
                            referencedTable: $$SaleItemsTableReferences
                                ._productIdTable(db),
                            referencedColumn:
                                $$SaleItemsTableReferences
                                    ._productIdTable(db)
                                    .id,
                          )
                          as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$SaleItemsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SaleItemsTable,
      SaleItem,
      $$SaleItemsTableFilterComposer,
      $$SaleItemsTableOrderingComposer,
      $$SaleItemsTableAnnotationComposer,
      $$SaleItemsTableCreateCompanionBuilder,
      $$SaleItemsTableUpdateCompanionBuilder,
      (SaleItem, $$SaleItemsTableReferences),
      SaleItem,
      PrefetchHooks Function({bool saleId, bool productId})
    >;
typedef $$StockMovementsTableCreateCompanionBuilder =
    StockMovementsCompanion Function({
      required String id,
      required String businessId,
      required String productId,
      required String type,
      required int quantityMilli,
      Value<int?> unitCostMinor,
      Value<String?> referenceId,
      Value<String?> note,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });
typedef $$StockMovementsTableUpdateCompanionBuilder =
    StockMovementsCompanion Function({
      Value<String> id,
      Value<String> businessId,
      Value<String> productId,
      Value<String> type,
      Value<int> quantityMilli,
      Value<int?> unitCostMinor,
      Value<String?> referenceId,
      Value<String?> note,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

final class $$StockMovementsTableReferences
    extends BaseReferences<_$AppDatabase, $StockMovementsTable, StockMovement> {
  $$StockMovementsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $BusinessesTable _businessIdTable(_$AppDatabase db) =>
      db.businesses.createAlias('stock_movements__business_id__businesses__id');

  $$BusinessesTableProcessedTableManager get businessId {
    final $_column = $_itemColumn<String>('business_id')!;

    final manager = $$BusinessesTableTableManager(
      $_db,
      $_db.businesses,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_businessIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $ProductsTable _productIdTable(_$AppDatabase db) =>
      db.products.createAlias('stock_movements__product_id__products__id');

  $$ProductsTableProcessedTableManager get productId {
    final $_column = $_itemColumn<String>('product_id')!;

    final manager = $$ProductsTableTableManager(
      $_db,
      $_db.products,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_productIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$StockMovementsTableFilterComposer
    extends Composer<_$AppDatabase, $StockMovementsTable> {
  $$StockMovementsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get quantityMilli => $composableBuilder(
    column: $table.quantityMilli,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get unitCostMinor => $composableBuilder(
    column: $table.unitCostMinor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get referenceId => $composableBuilder(
    column: $table.referenceId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$BusinessesTableFilterComposer get businessId {
    final $$BusinessesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.businessId,
      referencedTable: $db.businesses,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BusinessesTableFilterComposer(
            $db: $db,
            $table: $db.businesses,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProductsTableFilterComposer get productId {
    final $$ProductsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.productId,
      referencedTable: $db.products,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductsTableFilterComposer(
            $db: $db,
            $table: $db.products,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$StockMovementsTableOrderingComposer
    extends Composer<_$AppDatabase, $StockMovementsTable> {
  $$StockMovementsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get quantityMilli => $composableBuilder(
    column: $table.quantityMilli,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get unitCostMinor => $composableBuilder(
    column: $table.unitCostMinor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get referenceId => $composableBuilder(
    column: $table.referenceId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$BusinessesTableOrderingComposer get businessId {
    final $$BusinessesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.businessId,
      referencedTable: $db.businesses,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BusinessesTableOrderingComposer(
            $db: $db,
            $table: $db.businesses,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProductsTableOrderingComposer get productId {
    final $$ProductsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.productId,
      referencedTable: $db.products,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductsTableOrderingComposer(
            $db: $db,
            $table: $db.products,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$StockMovementsTableAnnotationComposer
    extends Composer<_$AppDatabase, $StockMovementsTable> {
  $$StockMovementsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get quantityMilli => $composableBuilder(
    column: $table.quantityMilli,
    builder: (column) => column,
  );

  GeneratedColumn<int> get unitCostMinor => $composableBuilder(
    column: $table.unitCostMinor,
    builder: (column) => column,
  );

  GeneratedColumn<String> get referenceId => $composableBuilder(
    column: $table.referenceId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$BusinessesTableAnnotationComposer get businessId {
    final $$BusinessesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.businessId,
      referencedTable: $db.businesses,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BusinessesTableAnnotationComposer(
            $db: $db,
            $table: $db.businesses,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProductsTableAnnotationComposer get productId {
    final $$ProductsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.productId,
      referencedTable: $db.products,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductsTableAnnotationComposer(
            $db: $db,
            $table: $db.products,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$StockMovementsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $StockMovementsTable,
          StockMovement,
          $$StockMovementsTableFilterComposer,
          $$StockMovementsTableOrderingComposer,
          $$StockMovementsTableAnnotationComposer,
          $$StockMovementsTableCreateCompanionBuilder,
          $$StockMovementsTableUpdateCompanionBuilder,
          (StockMovement, $$StockMovementsTableReferences),
          StockMovement,
          PrefetchHooks Function({bool businessId, bool productId})
        > {
  $$StockMovementsTableTableManager(
    _$AppDatabase db,
    $StockMovementsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$StockMovementsTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () =>
                  $$StockMovementsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$StockMovementsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> businessId = const Value.absent(),
                Value<String> productId = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<int> quantityMilli = const Value.absent(),
                Value<int?> unitCostMinor = const Value.absent(),
                Value<String?> referenceId = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => StockMovementsCompanion(
                id: id,
                businessId: businessId,
                productId: productId,
                type: type,
                quantityMilli: quantityMilli,
                unitCostMinor: unitCostMinor,
                referenceId: referenceId,
                note: note,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String businessId,
                required String productId,
                required String type,
                required int quantityMilli,
                Value<int?> unitCostMinor = const Value.absent(),
                Value<String?> referenceId = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => StockMovementsCompanion.insert(
                id: id,
                businessId: businessId,
                productId: productId,
                type: type,
                quantityMilli: quantityMilli,
                unitCostMinor: unitCostMinor,
                referenceId: referenceId,
                note: note,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable<$StockMovementsTable, StockMovement>(
                            table,
                          ),
                          $$StockMovementsTableReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: ({businessId = false, productId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                T extends TableManagerState<
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic
                >
              >(state) {
                if (businessId) {
                  state =
                      state.withJoin(
                            currentTable: table,
                            currentColumn: table.businessId,
                            referencedTable: $$StockMovementsTableReferences
                                ._businessIdTable(db),
                            referencedColumn:
                                $$StockMovementsTableReferences
                                    ._businessIdTable(db)
                                    .id,
                          )
                          as T;
                }
                if (productId) {
                  state =
                      state.withJoin(
                            currentTable: table,
                            currentColumn: table.productId,
                            referencedTable: $$StockMovementsTableReferences
                                ._productIdTable(db),
                            referencedColumn:
                                $$StockMovementsTableReferences
                                    ._productIdTable(db)
                                    .id,
                          )
                          as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$StockMovementsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $StockMovementsTable,
      StockMovement,
      $$StockMovementsTableFilterComposer,
      $$StockMovementsTableOrderingComposer,
      $$StockMovementsTableAnnotationComposer,
      $$StockMovementsTableCreateCompanionBuilder,
      $$StockMovementsTableUpdateCompanionBuilder,
      (StockMovement, $$StockMovementsTableReferences),
      StockMovement,
      PrefetchHooks Function({bool businessId, bool productId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$BusinessesTableTableManager get businesses =>
      $$BusinessesTableTableManager(_db, _db.businesses);
  $$CategoriesTableTableManager get categories =>
      $$CategoriesTableTableManager(_db, _db.categories);
  $$ProductsTableTableManager get products =>
      $$ProductsTableTableManager(_db, _db.products);
  $$SalesTableTableManager get sales =>
      $$SalesTableTableManager(_db, _db.sales);
  $$SaleItemsTableTableManager get saleItems =>
      $$SaleItemsTableTableManager(_db, _db.saleItems);
  $$StockMovementsTableTableManager get stockMovements =>
      $$StockMovementsTableTableManager(_db, _db.stockMovements);
}
