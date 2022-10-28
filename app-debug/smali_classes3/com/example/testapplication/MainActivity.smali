.class public Lcom/example/testapplication/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field private static final EYE_COLOR:Ljava/lang/String; = "Eye Color"

.field private static final HEIGHT:Ljava/lang/String; = "Height"

.field private static final WEIGHT:Ljava/lang/String; = "Weight"


# instance fields
.field private firebase:Lcom/google/firebase/firestore/FirebaseFirestore;

.field private userDetailsText:Landroid/widget/TextView;

.field private userEyeColor:Landroid/widget/EditText;

.field private userHeight:Landroid/widget/EditText;

.field private userName:Landroid/widget/EditText;

.field private userWeight:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/example/testapplication/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/example/testapplication/MainActivity;

    .line 26
    iget-object v0, p0, Lcom/example/testapplication/MainActivity;->userDetailsText:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/example/testapplication/MainActivity;->setContentView(I)V

    .line 46
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    iput-object v0, p0, Lcom/example/testapplication/MainActivity;->firebase:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 49
    const v0, 0x7f0801d5

    invoke-virtual {p0, v0}, Lcom/example/testapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/testapplication/MainActivity;->userName:Landroid/widget/EditText;

    .line 50
    const v0, 0x7f0801d6

    invoke-virtual {p0, v0}, Lcom/example/testapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/testapplication/MainActivity;->userWeight:Landroid/widget/EditText;

    .line 51
    const v0, 0x7f0801d4

    invoke-virtual {p0, v0}, Lcom/example/testapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/testapplication/MainActivity;->userHeight:Landroid/widget/EditText;

    .line 52
    const v0, 0x7f0801d3

    invoke-virtual {p0, v0}, Lcom/example/testapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/testapplication/MainActivity;->userEyeColor:Landroid/widget/EditText;

    .line 54
    return-void
.end method

.method public retrieveDetails(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 90
    const v0, 0x7f08009a

    invoke-virtual {p0, v0}, Lcom/example/testapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/testapplication/MainActivity;->userDetailsText:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/example/testapplication/MainActivity;->firebase:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v1, "User details"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/CollectionReference;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/example/testapplication/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/example/testapplication/MainActivity$3;-><init>(Lcom/example/testapplication/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 114
    return-void
.end method

.method public saveUser(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/example/testapplication/MainActivity;->userName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/testapplication/MainActivity;->userHeight:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "height":Ljava/lang/String;
    iget-object v2, p0, Lcom/example/testapplication/MainActivity;->userWeight:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "weight":Ljava/lang/String;
    iget-object v3, p0, Lcom/example/testapplication/MainActivity;->userEyeColor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "eyeColor":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v4, "userCharacter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "Weight"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v5, "Height"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v5, "Eye Color"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v5, p0, Lcom/example/testapplication/MainActivity;->firebase:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v6, "User details"

    invoke-virtual {v5, v6}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/firebase/firestore/DocumentReference;->set(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v5

    new-instance v6, Lcom/example/testapplication/MainActivity$2;

    invoke-direct {v6, p0}, Lcom/example/testapplication/MainActivity$2;-><init>(Lcom/example/testapplication/MainActivity;)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v5

    new-instance v6, Lcom/example/testapplication/MainActivity$1;

    invoke-direct {v6, p0}, Lcom/example/testapplication/MainActivity$1;-><init>(Lcom/example/testapplication/MainActivity;)V

    .line 79
    invoke-virtual {v5, v6}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 87
    return-void
.end method
