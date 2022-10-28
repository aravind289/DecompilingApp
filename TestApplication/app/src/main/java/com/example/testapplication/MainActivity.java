package com.example.testapplication;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.firestore.DocumentReference;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.firestore.QueryDocumentSnapshot;
import com.google.firebase.firestore.QuerySnapshot;

import java.util.HashMap;
import java.util.Map;


public class MainActivity extends AppCompatActivity {

    private FirebaseFirestore firebase;

    private static final String WEIGHT  = "Weight";
    private static final String HEIGHT  = "Height";
    private static final String EYE_COLOR  = "Eye Color";

    private EditText userName;
    private EditText userWeight;
    private EditText userHeight;
    private EditText userEyeColor;
    private TextView userDetailsText;

    //        {"aravind":{"weight":"86cm","height":"158cm","eyecolor":"blue"},

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        firebase = FirebaseFirestore.getInstance();


        userName = findViewById(R.id.user_name);
        userWeight = findViewById(R.id.user_weight);
        userHeight = findViewById(R.id.user_height);
        userEyeColor = findViewById(R.id.user_eye_color);

    }


    public void saveUser(View v){

        String name = userName.getText().toString();
        String height = userHeight.getText().toString();
        String weight = userWeight.getText().toString();
        String eyeColor = userEyeColor.getText().toString();

//        Map<String,Object> userNameCharacter = new HashMap<>();
        Map<String,Object> userCharacter =  new HashMap<>();

        userCharacter.put(WEIGHT,weight);
        userCharacter.put(HEIGHT,height);
        userCharacter.put(EYE_COLOR,eyeColor);

//        userNameCharacter.put(name,userCharacter);

        firebase.collection("User details").document(name).set(userCharacter).addOnSuccessListener(new OnSuccessListener<Void>() {
            @Override
            public void onSuccess(Void unused) {
                Toast.makeText(MainActivity.this, "User Details Saved", Toast.LENGTH_SHORT).show();

            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(@NonNull Exception e) {
                Toast.makeText(MainActivity.this, "Error ! ", Toast.LENGTH_SHORT).show();
                Log.d("Application",e.getMessage().toString());
            }
        });

    }

    public void retrieveDetails(View v){
        userDetailsText = findViewById(R.id.details_page);

        firebase.collection("User details").get().addOnCompleteListener(new OnCompleteListener<QuerySnapshot>() {
            @Override
            public void onComplete(@NonNull Task<QuerySnapshot> task) {
                Log.d("Application", "onComplete() returned: " + task);
                if(task.isSuccessful()){
                    Map<String,Object> userData = new HashMap<>();
                    for(QueryDocumentSnapshot item:task.getResult()){
                        userData.put(item.getId(), item.getData());

                    }
                    for (Map.Entry<String,Object> elem: userData.entrySet()){
                        userDetailsText.append(elem.getKey() +":"+elem.getValue().toString()+"\n");

                    }

                }
                else{
                    Toast.makeText(MainActivity.this, "Error ! ", Toast.LENGTH_SHORT).show();
                }
            }
        });

    }
}