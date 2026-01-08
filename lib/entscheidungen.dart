import 'package:flutter/material.dart';

final List<String> footerwisdoms = [
  "Auch ein Zeichen ist nur ein Echo.\nGehen musst du selbst.",
  "Worte können leuchten,\naber sie tragen dich nicht.",
  "Nicht jede Wahrheit spricht hier.\nManche findest du erst unterwegs.",
  "Das Orakel zeigt Richtungen,\nnicht das Ziel.",
  "Diese Stimme kennt Wege,\naber nicht deinen.",
];

final List<String> footerwisdoms_en = [
  "Even a sign is just an echo.\nYou must walk yourself.",
  "Words can shine,\nbut they won't carry you.",
  "Not every truth speaks here.\nSome you find only on the way.",
  "The oracle shows directions,\nnot the destination.",
  "This voice knows paths,\nbut not yours.",
];

final List<String> wisdoms = [
  // ⚔️ Entschlossen
  "Handle jetzt.",
  "Tu es.",
  "Zögere nicht.",
  "Steh dazu.",
  "Geh voran.",
  "Mach den ersten Schritt.",
  "Entscheide dich und trag es.",
  "Der Moment ist da.",

  // 🌫️ Abwarten / Zeit
  "Noch nicht.",
  "Warte einen Moment.",
  "Die Zeit ist nicht reif.",
  "Geduld bringt Klarheit.",
  "Lass es liegen.",
  "Nicht heute.",
  "Morgen siehst du klarer.",
  "Eile verzerrt das Urteil.",

  // 🧠 Reflektion
  "Du kennst die Antwort bereits.",
  "Warum zögerst du?",
  "Was hält dich wirklich zurück?",
  "Was würdest du verlieren?",
  "Was würdest du gewinnen?",
  "Wenn niemand zusieht – was würdest du tun?",
  "Hör auf dein Bauchgefühl.",
  "Sei ehrlich zu dir selbst.",

  // 🔥 Konfrontierend
  "Angst ist kein Argument.",
  "Bequemlichkeit spricht aus dir.",
  "Du suchst nur Bestätigung.",
  "Hör auf, dich zu verstecken.",
  "Zweifel schützt dich nicht.",
  "Stillstand ist eine Wahl.",
  "Du kannst nicht alles absichern.",
  "Mut fühlt sich selten sicher an.",

  // 🌌 Poetisch / episch
  "Jeder Schritt verändert den Weg.",
  "Der Weg entsteht beim Gehen.",
  "Was du wählst, wählt dich.",
  "Der Stillstand hat auch Folgen.",
  "Nicht jede Antwort ist laut.",
  "Der Zweifel schreit, die Wahrheit flüstert.",
  "Du bist näher dran, als du denkst.",
  "Manche Türen öffnen sich nur von innen.",

  // 🪨 Radikal ehrlich
  "Es wird nicht perfekt.",
  "Du wirst es überleben.",
  "Niemand weiß, was er tut.",
  "Fehler sind einkalkuliert.",
  "Du kannst später korrigieren.",
  "Nicht entscheiden ist riskanter.",
  "Du bist nicht zu spät.",
  "Du bist auch nicht zu früh.",

  // 🧭 Richtung geben
  "Wähle den schweren Weg.",
  "Wähle den ehrlichen Weg.",
  "Wähle das, was wächst.",
  "Wähle das, was bleibt.",
  "Wähle das, was dich fordert.",
  "Wähle mit Mut, nicht mit Angst.",
  "Wähle Klarheit.",
  "Wähle Verantwortung.",

  // 🕯️ Ruhig / minimal
  "Atme.",
  "Lass los.",
  "Bleib still.",
  "Beobachte.",
  "Nimm Abstand.",
  "Komm zur Ruhe.",
  "Nicht reagieren – entscheiden.",
  "Ruhe vor Handlung.",

  // 😈 Leicht frech (aber nicht albern)
  "Du willst es doch eh.",
  "Tu nicht so überrascht.",
  "Das ist keine große Sache.",
  "Du machst es komplizierter als nötig.",
  "Denk weniger.",
  "Fühl mehr.",
  "Drama hilft hier nicht.",
  "Mach’s einfach.",

  // 🪞 Spiegelnd
  "Was würdest du jemand anderem raten?",
  "Würdest du diese Wahl bereuen?",
  "Was kostet dich das Nichtstun?",
  "Wovor schützt dich diese Entscheidung?",
  "Was passiert, wenn du nichts änderst?",
  "Ist das wirklich dein Wunsch?",
  "Oder nur Gewohnheit?",
  "Oder nur Angst?",

  // 🏁 Abschluss / Akzeptanz
  "Egal wie – steh dazu.",
  "Triff eine Wahl und geh weiter.",
  "Du musst nicht alles wissen.",
  "Es reicht für den nächsten Schritt.",
  "Der Rest kommt später.",
  "Du darfst dich umentscheiden.",
  "Das Leben ist kein Test.",
  "Geh deinen Weg.",
];

final List<String> wisdoms_en = [
  // ⚔️ Decisive
  "Act now.",
  "Do it.",
  "Don't hesitate.",
  "Stand by it.",
  "Move forward.",
  "Take the first step.",
  "Decide and own it.",
  "The moment is here.",

  // 🌫️ Wait / Time
  "Not yet.",
  "Wait a moment.",
  "The time is not ripe.",
  "Patience brings clarity.",
  "Let it be.",
  "Not today.",
  "Tomorrow you will see more clearly.",
  "Haste distorts judgment.",

  // 🧠 Reflective
  "You already know the answer.",
  "Why do you hesitate?",
  "What truly holds you back?",
  "What would you lose?",
  "What would you gain?",
  "If no one is watching – what would you do?",
  "Listen to your gut.",
  "Be honest with yourself.",

  // 🔥 Confrontational
  "Fear is no argument.",
  "Comfort speaks for you.",
  "You're just seeking confirmation.",
  "Stop hiding.",
  "Doubt won't protect you.",
  "Stagnation is a choice.",
  "You can't secure everything.",
  "Courage rarely feels safe.",

  // 🌌 Poetic / Epic
  "Every step changes the path.",
  "The path is created while walking.",
  "What you choose, chooses you.",
  "Stillness has consequences too.",
  "Not every answer is loud.",
  "Doubt screams, truth whispers.",
  "You're closer than you think.",
  "Some doors open only from within.",

  // 🪨 Radical honesty
  "It won't be perfect.",
  "You will survive it.",
  "No one knows what they're doing.",
  "Mistakes are expected.",
  "You can correct later.",
  "Not deciding is riskier.",
  "You're not too late.",
  "You're also not too early.",

  // 🧭 Guidance / Direction
  "Choose the hard path.",
  "Choose the honest path.",
  "Choose what grows.",
  "Choose what remains.",
  "Choose what challenges you.",
  "Choose with courage, not fear.",
  "Choose clarity.",
  "Choose responsibility.",

  // 🕯️ Calm / Minimal
  "Breathe.",
  "Let go.",
  "Stay still.",
  "Observe.",
  "Take a step back.",
  "Find calm.",
  "Don't react – decide.",
  "Calm before action.",

  // 😈 Slightly cheeky
  "You want it anyway.",
  "Don't act surprised.",
  "It's not a big deal.",
  "You're making it more complicated than it is.",
  "Think less.",
  "Feel more.",
  "Drama won't help here.",
  "Just do it.",

  // 🪞 Reflective / Mirror
  "What would you advise someone else?",
  "Would you regret this choice?",
  "What does inaction cost you?",
  "What does this decision protect you from?",
  "What happens if you change nothing?",
  "Is this truly your wish?",
  "Or just habit?",
  "Or just fear?",

  // 🏁 Closing / Acceptance
  "Whatever happens – stand by it.",
  "Make a choice and move on.",
  "You don't have to know everything.",
  "This is enough for the next step.",
  "The rest comes later.",
  "You may change your mind.",
  "Life is not a test.",
  "Walk your path.",
];
