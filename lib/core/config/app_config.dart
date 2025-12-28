class AppConfig {
  static const supabaseUrl = String.fromEnvironment('SUPABASE_URL');

  static const supabaseAnonKey = String.fromEnvironment('SUPABASE_ANON_KEY');
}


/*
flutter run \
  --debug \
  --dart-define=SUPABASE_URL=SUPABASE_URL \
  --dart-define=SUPABASE_ANON_KEY=SUPABASE_ANON_KEY
  */