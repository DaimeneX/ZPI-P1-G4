package com.example.parkomax;

import androidx.appcompat.app.AppCompatActivity;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

public class HomeActivity extends AppCompatActivity {

    TextView tekst2;
    EditText xaa, yaa;
    ImageView wskaznik, samohud;

    double xa = 0, ya = 54;
    double xb = 0, yb = 0;
    double xc = 50, yc = 0;
    public double xp, yp;
    public double testxp = 4, testyp = 5;
    double aa, ba, ca, ab, bb, cb, ra, rb, rc;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);

        tekst2 = (TextView) findViewById(R.id.textView2);
        xaa = (EditText) findViewById(R.id.editTextxp);
        yaa = (EditText) findViewById(R.id.editTextyp);
        wskaznik = (ImageView) findViewById(R.id.imageView);
        samohud = (ImageView) findViewById(R.id.imageView1);

            }

    public void triangulujOnClick(View view){
        testxp = Double.parseDouble(xaa.getText().toString());
        testyp = Double.parseDouble(yaa.getText().toString());

        ra = Math.sqrt(Math.pow(xa - testxp, 2) + Math.pow(ya - testyp, 2));
        rb = Math.sqrt(Math.pow(xb - testxp, 2) + Math.pow(yb - testyp, 2));
        rc = Math.sqrt(Math.pow(xc - testxp, 2) + Math.pow(yc - testyp, 2));

        aa = 2*xb - 2*xa;
        ba = 2*yb - 2*ya;
        ca = ra*ra - rb*rb + xb*xb - xa*xa + yb*yb - ya*ya;
        ab = 2*xc - 2*xa;
        bb = 2*yc - 2*ya;
        cb = ra*ra - rc*rc + xc*xc - xa*xa + yc*yc - ya*ya;
        xp = (ba*cb - bb*ca)/(ab*ba - aa*bb);
        yp = (aa*cb - ab*ca)/(aa*bb - ab*ba);
        // xp = -(ba*yp)/aa + ca/aa;

        //wskaznik.setX((int)(18*xp) + 47);                 //emulator
        //wskaznik.setY((int)(-18*yp) + 1701);              //emulator

        wskaznik.setX((int)(12.06*xp) + 29);                    //telefon
        wskaznik.setY((int)(-12.06*yp) + 1215);                 //telefon

        wskaznik.setVisibility(1);
        tekst2.setText("xp = "+xp+", yp = "+yp+"\n("+wskaznik.getX()+"; "+wskaznik.getY()+")");
        System.out.println("xp = "+xp+", yp = "+yp);
        hideKeyboard(this);

    }

    public void zapamietajOnClick(View view){
        //samohud.setX((int)(18*xp) + 47);                  //emulator
        //samohud.setY((int)(-18*yp) + 1701);               //emulator

        samohud.setX((int)(12.06*xp) + 29);                    //telefon
        samohud.setY((int)(-12.06*yp) + 1215);                //telefon

        samohud.setVisibility(1);
    }

    public static void hideKeyboard(Activity activity) {
        View view = activity.findViewById(android.R.id.content);
        if (view != null) {
            InputMethodManager imm = (InputMethodManager) activity.getSystemService(Context.INPUT_METHOD_SERVICE);
            imm.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

}