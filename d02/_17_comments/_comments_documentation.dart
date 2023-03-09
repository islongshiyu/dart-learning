/**
 * 注释之文档注释
 */

/// A domesticated South American camelid (Lama glama).
///
/// Andean cultures have used llamas as meat and pack
/// animals since pre-Hispanic times.
///
/// Just like any other animal, llamas need to eat,
/// so don't forget to [feed].
class Llama {
  String? name;

  /// 文档注释写法1
  ///
  /// The typical llama eats one bale of hay per week.
  ///
  /**
   * 文档注释写法2
   */
  void feed(String food) {
    // ...
  }
}
