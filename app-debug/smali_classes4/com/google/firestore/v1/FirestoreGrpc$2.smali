.class Lcom/google/firestore/v1/FirestoreGrpc$2;
.super Ljava/lang/Object;
.source "FirestoreGrpc.java"

# interfaces
.implements Lio/grpc/stub/AbstractStub$StubFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firestore/v1/FirestoreGrpc;->newBlockingStub(Lio/grpc/Channel;)Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/stub/AbstractStub$StubFactory<",
        "Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newStub(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;
    .locals 2
    .param p1, "channel"    # Lio/grpc/Channel;
    .param p2, "callOptions"    # Lio/grpc/CallOptions;

    .line 477
    new-instance v0, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;Lcom/google/firestore/v1/FirestoreGrpc$1;)V

    return-object v0
.end method

.method public bridge synthetic newStub(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .locals 0

    .line 474
    invoke-virtual {p0, p1, p2}, Lcom/google/firestore/v1/FirestoreGrpc$2;->newStub(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;

    move-result-object p1

    return-object p1
.end method
