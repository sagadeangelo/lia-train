import 'dart:io';

void main() {
  var counts = <String, int>{};
  var files = [File('lib/data/questions.dart'), File('lib/data/questions_admin_new.dart')];
  
  for (var f in files) {
    if (!f.existsSync()) continue;
    var lines = f.readAsLinesSync();
    for (var line in lines) {
      var match = RegExp(r"category:\s*'([^']+)'").firstMatch(line);
      if (match != null) {
        var cat = match.group(1)!;
        counts[cat] = (counts[cat] ?? 0) + 1;
      }
    }
  }
  
  counts.forEach((k, v) => print('${k}: ${v}'));
}
