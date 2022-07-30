class GetPeopleParams {
  final int page_number;
  final String? language;
  GetPeopleParams({
    this.page_number = 1,
    this.language,
  }) : assert(page_number >= 1 && page_number <= 100);
}
