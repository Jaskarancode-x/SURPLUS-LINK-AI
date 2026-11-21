/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: dead_code, unnecessary_type_check

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_auth_core_client/serverpod_auth_core_client.dart'
    as _iacc;
import 'package:serverpod_auth_idp_client/serverpod_auth_idp_client.dart'
    as _iaic;
import 'package:serverpod_client/serverpod_client.dart' as _isc;
import 'package:surplus_link_ai_client/src/protocol/food_listing.dart'
    as _i0r66vnj;
import 'package:surplus_link_ai_client/src/protocol/session_participant.dart'
    as _i2c66h87;
import 'food_listing.dart' as _i121fseh;
import 'handover_verification.dart' as _iy0qs1gv;
import 'organisation.dart' as _in9qizgy;
import 'pickup_assignment.dart' as _iw7e05h5;
import 'rescue_session.dart' as _i1jqr07x;
import 'rescue_stream_event.dart' as _iieylioa;
import 'session_participant.dart' as _iwjh4o59;
import 'user.dart' as _iv73i78m;
export 'food_listing.dart';
export 'handover_verification.dart';
export 'organisation.dart';
export 'pickup_assignment.dart';
export 'rescue_session.dart';
export 'rescue_stream_event.dart';
export 'session_participant.dart';
export 'user.dart';
export 'client.dart';

class Protocol extends _isc.SerializationManager
    implements _isc.ProtocolDeserializationProvider {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._().._registerHostProtocols();

  @override
  _isc.ProtocolDeserialization get deserializationMetadata =>
      _isc.ProtocolDeserialization.cached(
        this,
        types: const [
          _isc.getType<_i121fseh.FoodListing>,
          _isc.getType<_iy0qs1gv.HandoverVerification>,
          _isc.getType<_in9qizgy.Organisation>,
          _isc.getType<_iw7e05h5.PickupAssignment>,
          _isc.getType<_i1jqr07x.RescueSession>,
          _isc.getType<_iieylioa.RescueStreamEvent>,
          _isc.getType<_iwjh4o59.SessionParticipant>,
          _isc.getType<_iv73i78m.User>,
          _isc.getType<_i121fseh.FoodListing?>,
          _isc.getType<_iy0qs1gv.HandoverVerification?>,
          _isc.getType<_in9qizgy.Organisation?>,
          _isc.getType<_iw7e05h5.PickupAssignment?>,
          _isc.getType<_i1jqr07x.RescueSession?>,
          _isc.getType<_iieylioa.RescueStreamEvent?>,
          _isc.getType<_iwjh4o59.SessionParticipant?>,
          _isc.getType<_iv73i78m.User?>,
          _isc.getType<List<_i0r66vnj.FoodListing>>,
          _isc.getType<List<_i2c66h87.SessionParticipant>>,
        ],
        modules: const [
          _iaic.Protocol.new,
          _iacc.Protocol.new,
        ],
        classNames: const [
          'FoodListing',
          'HandoverVerification',
          'Organisation',
          'PickupAssignment',
          'RescueSession',
          'RescueStreamEvent',
          'SessionParticipant',
          'User',
        ],
      );

  static String? getClassNameFromObjectJson(dynamic data) =>
      _isc.ProtocolDeserialization.readClassName(data);

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    final rawDataClassName = _isc.ProtocolDeserialization.readClassName(data);
    final dataClassName = rawDataClassName;
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on _isc.DeserializationClassNameNotFoundException catch (_) {
        // If the className is not recognized (e.g., older client receiving
        // data with a new subtype), fall back to deserializing without the
        // className, using the expected type T.
      }
    }

    if (t == _i121fseh.FoodListing) {
      return _i121fseh.FoodListing.fromJson(data) as T;
    }
    if (t == _iy0qs1gv.HandoverVerification) {
      return _iy0qs1gv.HandoverVerification.fromJson(data) as T;
    }
    if (t == _in9qizgy.Organisation) {
      return _in9qizgy.Organisation.fromJson(data) as T;
    }
    if (t == _iw7e05h5.PickupAssignment) {
      return _iw7e05h5.PickupAssignment.fromJson(data) as T;
    }
    if (t == _i1jqr07x.RescueSession) {
      return _i1jqr07x.RescueSession.fromJson(data) as T;
    }
    if (t == _iieylioa.RescueStreamEvent) {
      return _iieylioa.RescueStreamEvent.fromJson(data) as T;
    }
    if (t == _iwjh4o59.SessionParticipant) {
      return _iwjh4o59.SessionParticipant.fromJson(data) as T;
    }
    if (t == _iv73i78m.User) {
      return _iv73i78m.User.fromJson(data) as T;
    }
    if (t == _isc.getType<_i121fseh.FoodListing?>()) {
      return (data != null ? _i121fseh.FoodListing.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_iy0qs1gv.HandoverVerification?>()) {
      return (data != null
              ? _iy0qs1gv.HandoverVerification.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_in9qizgy.Organisation?>()) {
      return (data != null ? _in9qizgy.Organisation.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_iw7e05h5.PickupAssignment?>()) {
      return (data != null ? _iw7e05h5.PickupAssignment.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_i1jqr07x.RescueSession?>()) {
      return (data != null ? _i1jqr07x.RescueSession.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_iieylioa.RescueStreamEvent?>()) {
      return (data != null ? _iieylioa.RescueStreamEvent.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_iwjh4o59.SessionParticipant?>()) {
      return (data != null ? _iwjh4o59.SessionParticipant.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_iv73i78m.User?>()) {
      return (data != null ? _iv73i78m.User.fromJson(data) : null) as T;
    }
    if (t == List<_i0r66vnj.FoodListing>) {
      return (data as List)
              .map((e) => deserialize<_i0r66vnj.FoodListing>(e))
              .toList()
          as T;
    }
    if (t == List<_i2c66h87.SessionParticipant>) {
      return (data as List)
              .map((e) => deserialize<_i2c66h87.SessionParticipant>(e))
              .toList()
          as T;
    }
    final modules = deserializationMetadata.modulesForDeserialization(
      t,
      className: rawDataClassName,
    );
    for (final module in modules) {
      try {
        return module.deserialize<T>(data, t);
      } on _isc.DeserializationTypeNotFoundException catch (_) {}
    }

    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _i121fseh.FoodListing => 'FoodListing',
      _iy0qs1gv.HandoverVerification => 'HandoverVerification',
      _in9qizgy.Organisation => 'Organisation',
      _iw7e05h5.PickupAssignment => 'PickupAssignment',
      _i1jqr07x.RescueSession => 'RescueSession',
      _iieylioa.RescueStreamEvent => 'RescueStreamEvent',
      _iwjh4o59.SessionParticipant => 'SessionParticipant',
      _iv73i78m.User => 'User',
      _ => null,
    };
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;

    if (data is Map<String, dynamic> && data['__className__'] is String) {
      return (data['__className__'] as String).replaceFirst(
        'surplus_link_ai.',
        '',
      );
    }

    switch (data) {
      case _i121fseh.FoodListing():
        return 'FoodListing';
      case _iy0qs1gv.HandoverVerification():
        return 'HandoverVerification';
      case _in9qizgy.Organisation():
        return 'Organisation';
      case _iw7e05h5.PickupAssignment():
        return 'PickupAssignment';
      case _i1jqr07x.RescueSession():
        return 'RescueSession';
      case _iieylioa.RescueStreamEvent():
        return 'RescueStreamEvent';
      case _iwjh4o59.SessionParticipant():
        return 'SessionParticipant';
      case _iv73i78m.User():
        return 'User';
    }
    className = _iaic.Protocol().getClassNameForObject(data);
    if (className != null) {
      return className.contains('.')
          ? className
          : 'serverpod_auth_idp.$className';
    }
    className = _iacc.Protocol().getClassNameForObject(data);
    if (className != null) {
      return className.contains('.')
          ? className
          : 'serverpod_auth_core.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'FoodListing') {
      return deserialize<_i121fseh.FoodListing>(data['data']);
    }
    if (dataClassName == 'HandoverVerification') {
      return deserialize<_iy0qs1gv.HandoverVerification>(data['data']);
    }
    if (dataClassName == 'Organisation') {
      return deserialize<_in9qizgy.Organisation>(data['data']);
    }
    if (dataClassName == 'PickupAssignment') {
      return deserialize<_iw7e05h5.PickupAssignment>(data['data']);
    }
    if (dataClassName == 'RescueSession') {
      return deserialize<_i1jqr07x.RescueSession>(data['data']);
    }
    if (dataClassName == 'RescueStreamEvent') {
      return deserialize<_iieylioa.RescueStreamEvent>(data['data']);
    }
    if (dataClassName == 'SessionParticipant') {
      return deserialize<_iwjh4o59.SessionParticipant>(data['data']);
    }
    if (dataClassName == 'User') {
      return deserialize<_iv73i78m.User>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth_idp.')) {
      return _iaic.Protocol().deserializeByClassName({
        ...data,
        'className': dataClassName.substring(19),
      });
    }
    if (dataClassName.startsWith('serverpod_auth_core.')) {
      return _iacc.Protocol().deserializeByClassName({
        ...data,
        'className': dataClassName.substring(20),
      });
    }
    return super.deserializeByClassName(data);
  }

  void _registerHostProtocols() {
    _iaic.Protocol().registerHostProtocol('surplus_link_ai', this);
    _iacc.Protocol().registerHostProtocol('surplus_link_ai', this);
  }

  @override
  String getModuleName() => 'surplus_link_ai';

  /// Maps any `Record`s known to this [Protocol] to their JSON representation
  ///
  /// Throws in case the record type is not known.
  ///
  /// This method will return `null` (only) for `null` inputs.
  Map<String, dynamic>? mapRecordToJson(Record? record) {
    if (record == null) {
      return null;
    }
    try {
      return _iaic.Protocol().mapRecordToJson(record);
    } catch (_) {}
    try {
      return _iacc.Protocol().mapRecordToJson(record);
    } catch (_) {}
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}
