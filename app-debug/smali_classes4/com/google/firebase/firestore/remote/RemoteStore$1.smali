.class Lcom/google/firebase/firestore/remote/RemoteStore$1;
.super Ljava/lang/Object;
.source "RemoteStore.java"

# interfaces
.implements Lcom/google/firebase/firestore/remote/WatchStream$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/remote/RemoteStore;-><init>(Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/remote/Datastore;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/remote/ConnectivityMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/firestore/remote/RemoteStore;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/remote/RemoteStore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/firestore/remote/RemoteStore;

    .line 172
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/RemoteStore$1;->this$0:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lio/grpc/Status;)V
    .locals 1
    .param p1, "status"    # Lio/grpc/Status;

    .line 185
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore$1;->this$0:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/remote/RemoteStore;->access$200(Lcom/google/firebase/firestore/remote/RemoteStore;Lio/grpc/Status;)V

    .line 186
    return-void
.end method

.method public onOpen()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore$1;->this$0:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-static {v0}, Lcom/google/firebase/firestore/remote/RemoteStore;->access$000(Lcom/google/firebase/firestore/remote/RemoteStore;)V

    .line 176
    return-void
.end method

.method public onWatchChange(Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/remote/WatchChange;)V
    .locals 1
    .param p1, "snapshotVersion"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .param p2, "watchChange"    # Lcom/google/firebase/firestore/remote/WatchChange;

    .line 180
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore$1;->this$0:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/firestore/remote/RemoteStore;->access$100(Lcom/google/firebase/firestore/remote/RemoteStore;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/remote/WatchChange;)V

    .line 181
    return-void
.end method
