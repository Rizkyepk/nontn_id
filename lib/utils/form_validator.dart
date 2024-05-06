String? textFormValidators({required String? value, required String textName,}) {
  if (value?.isEmpty == true) {
    return 'Username tidak boleh kosong';
  } else {
    if (value!.length < 6) {
      return 'Username terlaku pendek!';
    }
  }
  return null;
}
