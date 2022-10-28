.class public final Lcom/google/firebase/firestore/remote/RemoteStore;
.super Ljava/lang/Object;
.source "RemoteStore.java"

# interfaces
.implements Lcom/google/firebase/firestore/remote/WatchChangeAggregator$TargetMetadataProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RemoteStore"

.field private static final MAX_PENDING_WRITES:I = 0xa


# instance fields
.field private final connectivityMonitor:Lcom/google/firebase/firestore/remote/ConnectivityMonitor;

.field private final datastore:Lcom/google/firebase/firestore/remote/Datastore;

.field private final listenTargets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/firebase/firestore/local/TargetData;",
            ">;"
        }
    .end annotation
.end field

.field private final localStore:Lcom/google/firebase/firestore/local/LocalStore;

.field private networkEnabled:Z

.field private final onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

.field private final remoteStoreCallback:Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;

.field private watchChangeAggregator:Lcom/google/firebase/firestore/remote/WatchChangeAggregator;

.field private final watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

.field private final writePipeline:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/google/firebase/firestore/model/mutation/MutationBatch;",
            ">;"
        }
    .end annotation
.end field

.field private final writeStream:Lcom/google/firebase/firestore/remote/WriteStream;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/remote/Datastore;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/remote/ConnectivityMonitor;)V
    .locals 2
    .param p1, "remoteStoreCallback"    # Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;
    .param p2, "localStore"    # Lcom/google/firebase/firestore/local/LocalStore;
    .param p3, "datastore"    # Lcom/google/firebase/firestore/remote/Datastore;
    .param p4, "workerQueue"    # Lcom/google/firebase/firestore/util/AsyncQueue;
    .param p5, "connectivityMonitor"    # Lcom/google/firebase/firestore/remote/ConnectivityMonitor;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->networkEnabled:Z

    .line 158
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->remoteStoreCallback:Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;

    .line 159
    iput-object p2, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    .line 160
    iput-object p3, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->datastore:Lcom/google/firebase/firestore/remote/Datastore;

    .line 161
    iput-object p5, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->connectivityMonitor:Lcom/google/firebase/firestore/remote/ConnectivityMonitor;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    .line 164
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    .line 166
    new-instance v0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    .line 167
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/firebase/firestore/remote/RemoteStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/google/firebase/firestore/remote/RemoteStore$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;)V

    invoke-direct {v0, p4, v1}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;-><init>(Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/remote/OnlineStateTracker$OnlineStateCallback;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    .line 170
    new-instance v0, Lcom/google/firebase/firestore/remote/RemoteStore$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/remote/RemoteStore$1;-><init>(Lcom/google/firebase/firestore/remote/RemoteStore;)V

    .line 171
    invoke-virtual {p3, v0}, Lcom/google/firebase/firestore/remote/Datastore;->createWatchStream(Lcom/google/firebase/firestore/remote/WatchStream$Callback;)Lcom/google/firebase/firestore/remote/WatchStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

    .line 189
    new-instance v0, Lcom/google/firebase/firestore/remote/RemoteStore$2;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/remote/RemoteStore$2;-><init>(Lcom/google/firebase/firestore/remote/RemoteStore;)V

    .line 190
    invoke-virtual {p3, v0}, Lcom/google/firebase/firestore/remote/Datastore;->createWriteStream(Lcom/google/firebase/firestore/remote/WriteStream$Callback;)Lcom/google/firebase/firestore/remote/WriteStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    .line 214
    new-instance v0, Lcom/google/firebase/firestore/remote/RemoteStore$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p4}, Lcom/google/firebase/firestore/remote/RemoteStore$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/firestore/remote/RemoteStore;Lcom/google/firebase/firestore/util/AsyncQueue;)V

    invoke-interface {p5, v0}, Lcom/google/firebase/firestore/remote/ConnectivityMonitor;->addCallback(Lcom/google/firebase/firestore/util/Consumer;)V

    .line 246
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/firestore/remote/RemoteStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/remote/RemoteStore;

    .line 57
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->handleWatchStreamOpen()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/firebase/firestore/remote/RemoteStore;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/remote/WatchChange;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/remote/RemoteStore;
    .param p1, "x1"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .param p2, "x2"    # Lcom/google/firebase/firestore/remote/WatchChange;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/remote/RemoteStore;->handleWatchChange(Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/remote/WatchChange;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firebase/firestore/remote/RemoteStore;Lio/grpc/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/remote/RemoteStore;
    .param p1, "x1"    # Lio/grpc/Status;

    .line 57
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/RemoteStore;->handleWatchStreamClose(Lio/grpc/Status;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firebase/firestore/remote/RemoteStore;)Lcom/google/firebase/firestore/remote/WriteStream;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/remote/RemoteStore;

    .line 57
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/firebase/firestore/remote/RemoteStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/remote/RemoteStore;

    .line 57
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->handleWriteStreamHandshakeComplete()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firebase/firestore/remote/RemoteStore;Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/remote/RemoteStore;
    .param p1, "x1"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .param p2, "x2"    # Ljava/util/List;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/remote/RemoteStore;->handleWriteStreamMutationResults(Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firebase/firestore/remote/RemoteStore;Lio/grpc/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/remote/RemoteStore;
    .param p1, "x1"    # Lio/grpc/Status;

    .line 57
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/RemoteStore;->handleWriteStreamClose(Lio/grpc/Status;)V

    return-void
.end method

.method private addToWritePipeline(Lcom/google/firebase/firestore/model/mutation/MutationBatch;)V
    .locals 3
    .param p1, "mutationBatch"    # Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    .line 629
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->canAddToWritePipeline()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "addToWritePipeline called when pipeline is full"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 631
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 633
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WriteStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WriteStream;->isHandshakeComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getMutations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/WriteStream;->writeMutations(Ljava/util/List;)V

    .line 636
    :cond_0
    return-void
.end method

.method private canAddToWritePipeline()Z
    .locals 2

    .line 621
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->canUseNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private cleanUpWatchStreamState()V
    .locals 1

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchChangeAggregator:Lcom/google/firebase/firestore/remote/WatchChangeAggregator;

    .line 431
    return-void
.end method

.method private disableNetworkInternal()V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WatchStream;->stop()V

    .line 288
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WriteStream;->stop()V

    .line 290
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "RemoteStore"

    const-string v2, "Stopping write stream with %d pending writes"

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->cleanUpWatchStreamState()V

    .line 296
    return-void
.end method

.method private handleWatchChange(Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/remote/WatchChange;)V
    .locals 4
    .param p1, "snapshotVersion"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .param p2, "watchChange"    # Lcom/google/firebase/firestore/remote/WatchChange;

    .line 452
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    sget-object v1, Lcom/google/firebase/firestore/core/OnlineState;->ONLINE:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->updateState(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 454
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchChangeAggregator:Lcom/google/firebase/firestore/remote/WatchChangeAggregator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "WatchStream and WatchStreamAggregator should both be non-null"

    invoke-static {v0, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 459
    instance-of v0, p2, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 461
    .local v0, "watchTargetChange":Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;
    :goto_1
    if-eqz v0, :cond_2

    .line 462
    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->getChangeType()Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->Removed:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 463
    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->getCause()Lio/grpc/Status;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 465
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/remote/RemoteStore;->processTargetError(Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;)V

    goto :goto_3

    .line 467
    :cond_2
    instance-of v2, p2, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;

    if-eqz v2, :cond_3

    .line 468
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchChangeAggregator:Lcom/google/firebase/firestore/remote/WatchChangeAggregator;

    move-object v2, p2

    check-cast v2, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->handleDocumentChange(Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;)V

    goto :goto_2

    .line 469
    :cond_3
    instance-of v2, p2, Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;

    if-eqz v2, :cond_4

    .line 470
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchChangeAggregator:Lcom/google/firebase/firestore/remote/WatchChangeAggregator;

    move-object v2, p2

    check-cast v2, Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->handleExistenceFilter(Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;)V

    goto :goto_2

    .line 472
    :cond_4
    instance-of v2, p2, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Expected watchChange to be an instance of WatchTargetChange"

    invoke-static {v2, v3, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 475
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchChangeAggregator:Lcom/google/firebase/firestore/remote/WatchChangeAggregator;

    move-object v2, p2

    check-cast v2, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->handleTargetChange(Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;)V

    .line 478
    :goto_2
    sget-object v1, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 479
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/LocalStore;->getLastRemoteSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v1

    .line 480
    .local v1, "lastRemoteSnapshotVersion":Lcom/google/firebase/firestore/model/SnapshotVersion;
    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/model/SnapshotVersion;->compareTo(Lcom/google/firebase/firestore/model/SnapshotVersion;)I

    move-result v2

    if-ltz v2, :cond_5

    .line 483
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/RemoteStore;->raiseWatchSnapshot(Lcom/google/firebase/firestore/model/SnapshotVersion;)V

    .line 487
    .end local v1    # "lastRemoteSnapshotVersion":Lcom/google/firebase/firestore/model/SnapshotVersion;
    :cond_5
    :goto_3
    return-void
.end method

.method private handleWatchStreamClose(Lio/grpc/Status;)V
    .locals 3
    .param p1, "status"    # Lio/grpc/Status;

    .line 490
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    nop

    .line 493
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->shouldStartWatchStream()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 492
    const-string v2, "Watch stream was stopped gracefully while still needed."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 496
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->cleanUpWatchStreamState()V

    .line 499
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->shouldStartWatchStream()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->handleWatchStreamFailure(Lio/grpc/Status;)V

    .line 502
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->startWatchStream()V

    goto :goto_0

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    sget-object v1, Lcom/google/firebase/firestore/core/OnlineState;->UNKNOWN:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->updateState(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 508
    :goto_0
    return-void
.end method

.method private handleWatchStreamOpen()V
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/local/TargetData;

    .line 446
    .local v1, "targetData":Lcom/google/firebase/firestore/local/TargetData;
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/remote/RemoteStore;->sendWatchRequest(Lcom/google/firebase/firestore/local/TargetData;)V

    .line 447
    .end local v1    # "targetData":Lcom/google/firebase/firestore/local/TargetData;
    goto :goto_0

    .line 448
    :cond_0
    return-void
.end method

.method private handleWriteError(Lio/grpc/Status;)V
    .locals 3
    .param p1, "status"    # Lio/grpc/Status;

    .line 722
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Handling write error with status OK."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 724
    invoke-static {p1}, Lcom/google/firebase/firestore/remote/Datastore;->isPermanentWriteError(Lio/grpc/Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    .line 731
    .local v0, "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/WriteStream;->inhibitBackoff()V

    .line 733
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->remoteStoreCallback:Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;->handleRejectedWrite(ILio/grpc/Status;)V

    .line 736
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->fillWritePipeline()V

    .line 738
    .end local v0    # "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    :cond_0
    return-void
.end method

.method private handleWriteHandshakeError(Lio/grpc/Status;)V
    .locals 5
    .param p1, "status"    # Lio/grpc/Status;

    .line 705
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Handling write error with status OK."

    invoke-static {v0, v4, v3}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 709
    invoke-static {p1}, Lcom/google/firebase/firestore/remote/Datastore;->isPermanentError(Lio/grpc/Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WriteStream;->getLastStreamToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/util/Util;->toDebugString(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, "token":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    aput-object p1, v3, v1

    const-string v1, "RemoteStore"

    const-string v2, "RemoteStore error before completed handshake; resetting stream token %s: %s"

    invoke-static {v1, v2, v3}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    sget-object v2, Lcom/google/firebase/firestore/remote/WriteStream;->EMPTY_STREAM_TOKEN:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/WriteStream;->setLastStreamToken(Lcom/google/protobuf/ByteString;)V

    .line 717
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    sget-object v2, Lcom/google/firebase/firestore/remote/WriteStream;->EMPTY_STREAM_TOKEN:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/LocalStore;->setLastStreamToken(Lcom/google/protobuf/ByteString;)V

    .line 719
    .end local v0    # "token":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handleWriteStreamClose(Lio/grpc/Status;)V
    .locals 3
    .param p1, "status"    # Lio/grpc/Status;

    .line 677
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    nop

    .line 680
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->shouldStartWriteStream()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 679
    const-string v2, "Write stream was stopped gracefully while still needed."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 685
    :cond_0
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 687
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WriteStream;->isHandshakeComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/RemoteStore;->handleWriteError(Lio/grpc/Status;)V

    goto :goto_0

    .line 693
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/RemoteStore;->handleWriteHandshakeError(Lio/grpc/Status;)V

    .line 699
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->shouldStartWriteStream()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 700
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->startWriteStream()V

    .line 702
    :cond_3
    return-void
.end method

.method private handleWriteStreamHandshakeComplete()V
    .locals 4

    .line 651
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/WriteStream;->getLastStreamToken()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/LocalStore;->setLastStreamToken(Lcom/google/protobuf/ByteString;)V

    .line 654
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    .line 655
    .local v1, "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getMutations()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/remote/WriteStream;->writeMutations(Ljava/util/List;)V

    .line 656
    .end local v1    # "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    goto :goto_0

    .line 657
    :cond_0
    return-void
.end method

.method private handleWriteStreamMutationResults(Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/util/List;)V
    .locals 3
    .param p1, "commitVersion"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/SnapshotVersion;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/MutationResult;",
            ">;)V"
        }
    .end annotation

    .line 666
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/MutationResult;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    .line 668
    .local v0, "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    .line 669
    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/WriteStream;->getLastStreamToken()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->create(Lcom/google/firebase/firestore/model/mutation/MutationBatch;Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/util/List;Lcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;

    move-result-object v1

    .line 670
    .local v1, "mutationBatchResult":Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->remoteStoreCallback:Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;

    invoke-interface {v2, v1}, Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;->handleSuccessfulWrite(Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)V

    .line 673
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->fillWritePipeline()V

    .line 674
    return-void
.end method

.method private processTargetError(Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;)V
    .locals 5
    .param p1, "targetChange"    # Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;

    .line 575
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->getCause()Lio/grpc/Status;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Processing target error without a cause"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 576
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 578
    .local v1, "targetId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 579
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchChangeAggregator:Lcom/google/firebase/firestore/remote/WatchChangeAggregator;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->removeTarget(I)V

    .line 581
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->remoteStoreCallback:Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->getCause()Lio/grpc/Status;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;->handleRejectedListen(ILio/grpc/Status;)V

    .line 583
    .end local v1    # "targetId":Ljava/lang/Integer;
    :cond_1
    goto :goto_1

    .line 584
    :cond_2
    return-void
.end method

.method private raiseWatchSnapshot(Lcom/google/firebase/firestore/model/SnapshotVersion;)V
    .locals 11
    .param p1, "snapshotVersion"    # Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 521
    sget-object v0, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 522
    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 521
    const-string v2, "Can\'t raise event for unknown SnapshotVersion"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 524
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchChangeAggregator:Lcom/google/firebase/firestore/remote/WatchChangeAggregator;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->createRemoteEvent(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/remote/RemoteEvent;

    move-result-object v0

    .line 528
    .local v0, "remoteEvent":Lcom/google/firebase/firestore/remote/RemoteEvent;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/RemoteEvent;->getTargetChanges()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 529
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/firebase/firestore/remote/TargetChange;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/remote/TargetChange;

    .line 530
    .local v3, "targetChange":Lcom/google/firebase/firestore/remote/TargetChange;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/remote/TargetChange;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 531
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 532
    .local v4, "targetId":I
    iget-object v5, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/local/TargetData;

    .line 534
    .local v5, "targetData":Lcom/google/firebase/firestore/local/TargetData;
    if-eqz v5, :cond_0

    .line 535
    iget-object v6, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    .line 536
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/firebase/firestore/remote/TargetChange;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v8

    invoke-virtual {v5, v8, p1}, Lcom/google/firebase/firestore/local/TargetData;->withResumeToken(Lcom/google/protobuf/ByteString;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v8

    .line 535
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/firebase/firestore/remote/TargetChange;>;"
    .end local v3    # "targetChange":Lcom/google/firebase/firestore/remote/TargetChange;
    .end local v4    # "targetId":I
    .end local v5    # "targetData":Lcom/google/firebase/firestore/local/TargetData;
    :cond_0
    goto :goto_0

    .line 543
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/RemoteEvent;->getTargetMismatches()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 544
    .local v2, "targetId":I
    iget-object v3, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/google/firebase/firestore/local/TargetData;

    .line 546
    .local v9, "targetData":Lcom/google/firebase/firestore/local/TargetData;
    if-eqz v9, :cond_2

    .line 548
    iget-object v3, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    .line 549
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 550
    invoke-virtual {v9}, Lcom/google/firebase/firestore/local/TargetData;->getSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v6

    invoke-virtual {v9, v5, v6}, Lcom/google/firebase/firestore/local/TargetData;->withResumeToken(Lcom/google/protobuf/ByteString;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v5

    .line 548
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/remote/RemoteStore;->sendUnwatchRequest(I)V

    .line 560
    new-instance v10, Lcom/google/firebase/firestore/local/TargetData;

    .line 562
    invoke-virtual {v9}, Lcom/google/firebase/firestore/local/TargetData;->getTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v4

    .line 564
    invoke-virtual {v9}, Lcom/google/firebase/firestore/local/TargetData;->getSequenceNumber()J

    move-result-wide v6

    sget-object v8, Lcom/google/firebase/firestore/local/QueryPurpose;->EXISTENCE_FILTER_MISMATCH:Lcom/google/firebase/firestore/local/QueryPurpose;

    move-object v3, v10

    move v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/firebase/firestore/local/TargetData;-><init>(Lcom/google/firebase/firestore/core/Target;IJLcom/google/firebase/firestore/local/QueryPurpose;)V

    .line 566
    .local v3, "requestTargetData":Lcom/google/firebase/firestore/local/TargetData;
    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/remote/RemoteStore;->sendWatchRequest(Lcom/google/firebase/firestore/local/TargetData;)V

    .line 568
    .end local v2    # "targetId":I
    .end local v3    # "requestTargetData":Lcom/google/firebase/firestore/local/TargetData;
    .end local v9    # "targetData":Lcom/google/firebase/firestore/local/TargetData;
    :cond_2
    goto :goto_1

    .line 571
    :cond_3
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->remoteStoreCallback:Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;

    invoke-interface {v1, v0}, Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;->handleRemoteEvent(Lcom/google/firebase/firestore/remote/RemoteEvent;)V

    .line 572
    return-void
.end method

.method private restartNetwork()V
    .locals 2

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->networkEnabled:Z

    .line 300
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->disableNetworkInternal()V

    .line 301
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    sget-object v1, Lcom/google/firebase/firestore/core/OnlineState;->UNKNOWN:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->updateState(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 302
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WriteStream;->inhibitBackoff()V

    .line 303
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WatchStream;->inhibitBackoff()V

    .line 304
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->enableNetwork()V

    .line 305
    return-void
.end method

.method private sendUnwatchRequest(I)V
    .locals 1
    .param p1, "targetId"    # I

    .line 406
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchChangeAggregator:Lcom/google/firebase/firestore/remote/WatchChangeAggregator;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->recordPendingTargetRequest(I)V

    .line 407
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/WatchStream;->unwatchTarget(I)V

    .line 408
    return-void
.end method

.method private sendWatchRequest(Lcom/google/firebase/firestore/local/TargetData;)V
    .locals 2
    .param p1, "targetData"    # Lcom/google/firebase/firestore/local/TargetData;

    .line 371
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchChangeAggregator:Lcom/google/firebase/firestore/remote/WatchChangeAggregator;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->recordPendingTargetRequest(I)V

    .line 372
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/WatchStream;->watchQuery(Lcom/google/firebase/firestore/local/TargetData;)V

    .line 373
    return-void
.end method

.method private shouldStartWatchStream()Z
    .locals 1

    .line 423
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->canUseNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WatchStream;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldStartWriteStream()Z
    .locals 1

    .line 415
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->canUseNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WriteStream;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startWatchStream()V
    .locals 3

    .line 434
    nop

    .line 435
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->shouldStartWatchStream()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 434
    const-string v2, "startWatchStream() called when shouldStartWatchStream() is false."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 437
    new-instance v0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;-><init>(Lcom/google/firebase/firestore/remote/WatchChangeAggregator$TargetMetadataProvider;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchChangeAggregator:Lcom/google/firebase/firestore/remote/WatchChangeAggregator;

    .line 438
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WatchStream;->start()V

    .line 440
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->handleWatchStreamStart()V

    .line 441
    return-void
.end method

.method private startWriteStream()V
    .locals 3

    .line 639
    nop

    .line 640
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->shouldStartWriteStream()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 639
    const-string v2, "startWriteStream() called when shouldStartWriteStream() is false."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 642
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WriteStream;->start()V

    .line 643
    return-void
.end method


# virtual methods
.method public canUseNetwork()Z
    .locals 1

    .line 513
    iget-boolean v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->networkEnabled:Z

    return v0
.end method

.method public createTransaction()Lcom/google/firebase/firestore/core/Transaction;
    .locals 2

    .line 741
    new-instance v0, Lcom/google/firebase/firestore/core/Transaction;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->datastore:Lcom/google/firebase/firestore/remote/Datastore;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/core/Transaction;-><init>(Lcom/google/firebase/firestore/remote/Datastore;)V

    return-object v0
.end method

.method public disableNetwork()V
    .locals 2

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->networkEnabled:Z

    .line 280
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->disableNetworkInternal()V

    .line 283
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    sget-object v1, Lcom/google/firebase/firestore/core/OnlineState;->OFFLINE:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->updateState(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 284
    return-void
.end method

.method public enableNetwork()V
    .locals 2

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->networkEnabled:Z

    .line 252
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->canUseNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/LocalStore;->getLastStreamToken()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/WriteStream;->setLastStreamToken(Lcom/google/protobuf/ByteString;)V

    .line 255
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->shouldStartWatchStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->startWatchStream()V

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    sget-object v1, Lcom/google/firebase/firestore/core/OnlineState;->UNKNOWN:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->updateState(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 262
    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->fillWritePipeline()V

    .line 264
    :cond_1
    return-void
.end method

.method public fillWritePipeline()V
    .locals 3

    .line 598
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v0

    .line 599
    .local v0, "lastBatchIdRetrieved":I
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->canAddToWritePipeline()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 600
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/local/LocalStore;->getNextMutationBatch(I)Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v1

    .line 601
    .local v1, "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    if-nez v1, :cond_1

    .line 602
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 603
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/remote/WriteStream;->markIdle()V

    goto :goto_1

    .line 607
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/remote/RemoteStore;->addToWritePipeline(Lcom/google/firebase/firestore/model/mutation/MutationBatch;)V

    .line 608
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v0

    .line 609
    .end local v1    # "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    goto :goto_0

    .line 611
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->shouldStartWriteStream()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 612
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->startWriteStream()V

    .line 614
    :cond_3
    return-void
.end method

.method forceEnableNetwork()V
    .locals 2

    .line 273
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->enableNetwork()V

    .line 274
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    sget-object v1, Lcom/google/firebase/firestore/core/OnlineState;->ONLINE:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->updateState(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 275
    return-void
.end method

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

    .line 746
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->remoteStoreCallback:Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;->getRemoteKeysForTarget(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getTargetDataForTarget(I)Lcom/google/firebase/firestore/local/TargetData;
    .locals 2
    .param p1, "targetId"    # I

    .line 752
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/local/TargetData;

    return-object v0
.end method

.method public handleCredentialChange()V
    .locals 3

    .line 339
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->canUseNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RemoteStore"

    const-string v2, "Restarting streams for new credential."

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->restartNetwork()V

    .line 346
    :cond_0
    return-void
.end method

.method synthetic lambda$new$0$com-google-firebase-firestore-remote-RemoteStore(Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;)V
    .locals 3
    .param p1, "networkStatus"    # Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;

    .line 224
    sget-object v0, Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;->REACHABLE:Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    .line 225
    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->getState()Lcom/google/firebase/firestore/core/OnlineState;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/core/OnlineState;->ONLINE:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/core/OnlineState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    return-void

    .line 229
    :cond_0
    sget-object v0, Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;->UNREACHABLE:Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    .line 230
    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->getState()Lcom/google/firebase/firestore/core/OnlineState;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/core/OnlineState;->OFFLINE:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/core/OnlineState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    return-void

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->canUseNetwork()Z

    move-result v0

    if-nez v0, :cond_2

    .line 237
    return-void

    .line 242
    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RemoteStore"

    const-string v2, "Restarting streams for network reachability change."

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->restartNetwork()V

    .line 244
    return-void
.end method

.method synthetic lambda$new$1$com-google-firebase-firestore-remote-RemoteStore(Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;)V
    .locals 1
    .param p1, "workerQueue"    # Lcom/google/firebase/firestore/util/AsyncQueue;
    .param p2, "networkStatus"    # Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;

    .line 216
    new-instance v0, Lcom/google/firebase/firestore/remote/RemoteStore$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/firestore/remote/RemoteStore$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/remote/RemoteStore;Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;)V

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAndForget(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method

.method public listen(Lcom/google/firebase/firestore/local/TargetData;)V
    .locals 2
    .param p1, "targetData"    # Lcom/google/firebase/firestore/local/TargetData;

    .line 356
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 357
    .local v0, "targetId":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    return-void

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->shouldStartWatchStream()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->startWatchStream()V

    goto :goto_0

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/WatchStream;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 366
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/RemoteStore;->sendWatchRequest(Lcom/google/firebase/firestore/local/TargetData;)V

    .line 368
    :cond_2
    :goto_0
    return-void
.end method

.method public runCountQuery(Lcom/google/firebase/firestore/core/Query;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 756
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->canUseNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->datastore:Lcom/google/firebase/firestore/remote/Datastore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/Datastore;->runCountQuery(Lcom/google/firebase/firestore/core/Query;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 759
    :cond_0
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->UNAVAILABLE:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    const-string v2, "Failed to get result from server."

    invoke-direct {v0, v2, v1}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 4

    .line 321
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "RemoteStore"

    const-string v3, "Shutting down"

    invoke-static {v2, v3, v1}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->connectivityMonitor:Lcom/google/firebase/firestore/remote/ConnectivityMonitor;

    invoke-interface {v1}, Lcom/google/firebase/firestore/remote/ConnectivityMonitor;->shutdown()V

    .line 323
    iput-boolean v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->networkEnabled:Z

    .line 324
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->disableNetworkInternal()V

    .line 325
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->datastore:Lcom/google/firebase/firestore/remote/Datastore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/Datastore;->shutdown()V

    .line 328
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    sget-object v1, Lcom/google/firebase/firestore/core/OnlineState;->UNKNOWN:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->updateState(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 329
    return-void
.end method

.method public start()V
    .locals 0

    .line 313
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->enableNetwork()V

    .line 314
    return-void
.end method

.method public stopListening(I)V
    .locals 5
    .param p1, "targetId"    # I

    .line 384
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/local/TargetData;

    .line 385
    .local v0, "targetData":Lcom/google/firebase/firestore/local/TargetData;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 386
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 385
    const-string v2, "stopListening called on target no currently watched: %d"

    invoke-static {v3, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 389
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/WatchStream;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/RemoteStore;->sendUnwatchRequest(I)V

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 394
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/WatchStream;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 395
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/WatchStream;->markIdle()V

    goto :goto_1

    .line 396
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->canUseNetwork()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 400
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    sget-object v2, Lcom/google/firebase/firestore/core/OnlineState;->UNKNOWN:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->updateState(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 403
    :cond_3
    :goto_1
    return-void
.end method
