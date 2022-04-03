package com.example.parkomax;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void loginOnClick (View view){
        Intent intent = new Intent(getApplicationContext(), QRActivity.class);
        startActivity(intent);
    }

    public void testOnClick (View view){
        Intent intent = new Intent(getApplicationContext(), BeaconConnect.class);
        startActivity(intent);
    }

}