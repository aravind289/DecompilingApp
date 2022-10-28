.class Lcom/google/firebase/firestore/core/MemoryComponentProvider$RemoteStoreCallback;
.super Ljava/lang/Object;
.source "MemoryComponentProvider.java"

# interfaces
.implements Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/MemoryComponentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteStoreCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/firestore/core/MemoryComponentProvider;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/core/MemoryComponentProvider;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/google/firebase/firestore/core/MemoryComponentProvider$RemoteStoreCallback;->this$0:Lcom/google/firebase/firestore/core/MemoryComponentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/core/MemoryComponentProvider;Lcom/google/firebase/firestore/core/MemoryComponentProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/core/MemoryComponentProvider;
    .param p2, "x1"    # Lcom/google/firebase/firestore/core/MemoryComponentProvider$1;

    .line 95
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/core/MemoryComponentProvider$RemoteStoreCallback;-><init>(Lcom/google/firebase/firestore/core/MemoryComponentProvider;)V

    return-void
.end method


# virtual methods
.method public getRemoteKeysForTarget(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .locals 1
    .param p1, "targetId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/google/firebase/firestore/core/MemoryComponentProvider$RemoteStoreCallback;->this$0:Lcom/google/firebase/firestore/core/MemoryComponentProvider;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/MemoryComponentProvider;->getSyncEngine()Lcom/google/firebase/firestore/core/SyncEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/core/SyncEngine;->getRemoteKeysForTarget(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public handleOnlineStateChange(Lcom/google/firebase/firestore/core/OnlineState;)V
    .locals 1
    .param p1, "onlineState"    # Lcom/google/firebase/firestore/core/OnlineState;

    .line 119
    iget-object v0, p0, Lcom/google/firebase/firestore/core/MemoryComponentProvider$RemoteStoreCallback;->this$0:Lcom/google/firebase/firestore/core/MemoryComponentProvider;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/MemoryComponentProvider;->getSyncEngine()Lcom/google/firebase/firestore/core/SyncEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/core/SyncEngine;->handleOnlineStateChange(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 120
    return-void
.end method

.method public handleRejectedListen(ILio/grpc/Status;)V
    .locals 1
    .param p1, "targetId"    # I
    .param p2, "error"    # Lio/grpc/Status;

    .line 104
    iget-object v0, p0, Lcom/google/firebase/firestore/core/MemoryComponentProvider$RemoteStoreCallback;->this$0:Lcom/google/firebase/firestore/core/MemoryComponentProvider;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/MemoryComponentProvider;->getSyncEngine()Lcom/google/firebase/firestore/core/SyncEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/firestore/core/SyncEngine;->handleRejectedListen(ILio/grpc/Status;)V

    .line 105
    return-void
.end method

.method public handleRejectedWrite(ILio/grpc/Status;)V
    .locals 1
    .param p1, "batchId"    # I
    .param p2, "error"    # Lio/grpc/Status;

    .line 114
    iget-object v0, p0, Lcom/google/firebase/firestore/core/MemoryComponentProvider$RemoteStoreCallback;->this$0:Lcom/google/firebase/firestore/core/MemoryComponentProvider;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/MemoryComponentProvider;->getSyncEngine()Lcom/google/firebase/firestore/core/SyncEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/firestore/core/SyncEngine;->handleRejectedWrite(ILio/grpc/Status;)V

    .line 115
    return-void
.end method

.method public handleRemoteEvent(Lcom/google/firebase/firestore/remote/RemoteEvent;)V
    .locals 1
    .param p1, "remoteEvent"    # Lcom/google/firebase/firestore/remote/RemoteEvent;

    .line 99
    iget-object v0, p0, Lcom/google/firebase/firestore/core/MemoryComponentProvider$RemoteStoreCallback;->this$0:Lcom/google/firebase/firestore/core/MemoryComponentProvider;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/MemoryComponentProvider;->getSyncEngine()Lcom/google/firebase/firestore/core/SyncEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/core/SyncEngine;->handleRemoteEvent(Lcom/google/firebase/firestore/remote/RemoteEvent;)V

    .line 100
    return-void
.end method

.method public handleSuccessfulWrite(Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)V
    .locals 1
    .param p1, "mutationBatchResult"    # Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;

    .line 109
    iget-object v0, p0, Lcom/google/firebase/firestore/core/MemoryComponentProvider$RemoteStoreCallback;->this$0:Lcom/google/firebase/firestore/core/MemoryComponentProvider;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/MemoryComponentProvider;->getSyncEngine()Lcom/google/firebase/firestore/core/SyncEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/core/SyncEngine;->handleSuccessfulWrite(Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)V

    .line 110
    return-void
.end method
