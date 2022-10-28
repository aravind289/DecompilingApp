package com.example.testapplication;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.firestore.QueryDocumentSnapshot;
import com.google.firebase.firestore.QuerySnapshot;
import java.util.HashMap;
import java.util.Map;

public class MainActivity extends AppCompatActivity {
  private static final String EYE_COLOR = "Eye Color";
  
  private static final String HEIGHT = "Height";
  
  private static final String WEIGHT = "Weight";
  
  private FirebaseFirestore firebase;
  
  private TextView userDetailsText;
  
  private EditText userEyeColor;
  
  private EditText userHeight;
  
  private EditText userName;
  
  private EditText userWeight;
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2131427356);
    this.firebase = FirebaseFirestore.getInstance();
    this.userName = (EditText)findViewById(2131231189);
    this.userWeight = (EditText)findViewById(2131231190);
    this.userHeight = (EditText)findViewById(2131231188);
    this.userEyeColor = (EditText)findViewById(2131231187);
  }
  
  public void retrieveDetails(View paramView) {
    this.userDetailsText = (TextView)findViewById(2131230874);
    this.firebase.collection("User details").get().addOnCompleteListener(new OnCompleteListener<QuerySnapshot>() {
          public void onComplete(Task<QuerySnapshot> param1Task) {
            Log.d("Application", "onComplete() returned: " + param1Task);
            if (param1Task.isSuccessful()) {
              HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
              for (QueryDocumentSnapshot queryDocumentSnapshot : param1Task.getResult())
                hashMap.put(queryDocumentSnapshot.getId(), queryDocumentSnapshot.getData()); 
              for (Map.Entry<Object, Object> entry : hashMap.entrySet())
                MainActivity.this.userDetailsText.append((String)entry.getKey() + ":" + entry.getValue().toString() + "\n"); 
            } else {
              Toast.makeText((Context)MainActivity.this, "Error ! ", 0).show();
            } 
          }
        });
  }
  
  public void saveUser(View paramView) {
    String str1 = this.userName.getText().toString();
    String str2 = this.userHeight.getText().toString();
    String str3 = this.userWeight.getText().toString();
    String str4 = this.userEyeColor.getText().toString();
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("Weight", str3);
    hashMap.put("Height", str2);
    hashMap.put("Eye Color", str4);
    this.firebase.collection("User details").document(str1).set(hashMap).addOnSuccessListener(new OnSuccessListener<Void>() {
          public void onSuccess(Void param1Void) {
            Toast.makeText((Context)MainActivity.this, "User Details Saved", 0).show();
          }
        }).addOnFailureListener(new OnFailureListener() {
          public void onFailure(Exception param1Exception) {
            Toast.makeText((Context)MainActivity.this, "Error ! ", 0).show();
            Log.d("Application", param1Exception.getMessage().toString());
          }
        });
  }
}


/* Location:              /opt/homebrew/Cellar/dex2jar/2.1/classes3-dex2jar.jar!/com/example/testapplication/MainActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */