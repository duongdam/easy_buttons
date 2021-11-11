class TypeRole {
  static const Owner = "owner";
  static const Admin = "admin";
  static const Viewer = "viewer";
}

class TypeToast {
  const TypeToast._(this.value);

  final String value;
  static const TypeToast Success = TypeToast._('success');
  static const TypeToast Warning = TypeToast._('warning');
  static const TypeToast Error = TypeToast._('error');
  static const TypeToast Notify = TypeToast._('notify');
}
