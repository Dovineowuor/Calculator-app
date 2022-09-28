package com.example.calculator_app

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
//main activity
}
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
// ...

onCreate()
public class MainActivity extends AppCompatActivity {

    private static final String TAG = "MainActivity";

    private AdView mAdView;
    // ...

    @Override
    protected void androidx.compose.foundation.layout.Box {
        onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            setContentView(R.layout.activity_main);

            mAdView = findViewById(R.id.adView);
            AdRequest adRequest = new AdRequest.Builder().build();
            mAdView.loadAd(adRequest);
        }

