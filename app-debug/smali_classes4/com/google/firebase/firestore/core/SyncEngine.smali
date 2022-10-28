.class public Lcom/google/firebase/firestore/core/SyncEngine;
.super Ljava/lang/Object;
.source "SyncEngine.java"

# interfaces
.implements Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;,
        Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activeLimboResolutionsByTarget:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;",
            ">;"
        }
    .end annotation
.end field

.field private final activeLimboTargetsByKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentUser:Lcom/google/firebase/firestore/auth/User;

.field private final enqueuedLimboResolutions:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation
.end field

.field private final limboDocumentRefs:Lcom/google/firebase/firestore/local/ReferenceSet;

.field private final localStore:Lcom/google/firebase/firestore/local/LocalStore;

.field private final maxConcurrentLimboResolutions:I

.field private final mutationUserCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/auth/User;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final pendingWritesCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final queriesByTarget:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Query;",
            ">;>;"
        }
    .end annotation
.end field

.field private final queryViewsByQuery:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/core/Query;",
            "Lcom/google/firebase/firestore/core/QueryView;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

.field private syncEngineListener:Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;

.field private final targetIdGenerator:Lcom/google/firebase/firestore/core/TargetIdGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    const-class v0, Lcom/google/firebase/firestore/core/SyncEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/core/SyncEngine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/remote/RemoteStore;Lcom/google/firebase/firestore/auth/User;I)V
    .locals 1
    .param p1, "localStore"    # Lcom/google/firebase/firestore/local/LocalStore;
    .param p2, "remoteStore"    # Lcom/google/firebase/firestore/remote/RemoteStore;
    .param p3, "initialUser"    # Lcom/google/firebase/firestore/auth/User;
    .param p4, "maxConcurrentLimboResolutions"    # I

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    .line 167
    iput-object p2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    .line 168
    iput p4, p0, Lcom/google/firebase/firestore/core/SyncEngine;->maxConcurrentLimboResolutions:I

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queryViewsByQuery:Ljava/util/Map;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queriesByTarget:Ljava/util/Map;

    .line 173
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->enqueuedLimboResolutions:Ljava/util/LinkedHashSet;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboTargetsByKey:Ljava/util/Map;

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboResolutionsByTarget:Ljava/util/Map;

    .line 176
    new-instance v0, Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/ReferenceSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->limboDocumentRefs:Lcom/google/firebase/firestore/local/ReferenceSet;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->mutationUserCallbacks:Ljava/util/Map;

    .line 179
    invoke-static {}, Lcom/google/firebase/firestore/core/TargetIdGenerator;->forSyncEngine()Lcom/google/firebase/firestore/core/TargetIdGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->targetIdGenerator:Lcom/google/firebase/firestore/core/TargetIdGenerator;

    .line 180
    iput-object p3, p0, Lcom/google/firebase/firestore/core/SyncEngine;->currentUser:Lcom/google/firebase/firestore/auth/User;

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->pendingWritesCallbacks:Ljava/util/Map;

    .line 183
    return-void
.end method

.method private addUserCallback(ILcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3
    .param p1, "batchId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 287
    .local p2, "userTask":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->mutationUserCallbacks:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->currentUser:Lcom/google/firebase/firestore/auth/User;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 288
    .local v0, "userTasks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;>;"
    if-nez v0, :cond_0

    .line 289
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 290
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->mutationUserCallbacks:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->currentUser:Lcom/google/firebase/firestore/auth/User;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    return-void
.end method

.method private assertCallback(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->syncEngineListener:Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string v2, "Trying to call %s before setting callback"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method private emitNewSnapsAndNotifyLocalStore(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/firestore/remote/RemoteEvent;)V
    .locals 11
    .param p2, "remoteEvent"    # Lcom/google/firebase/firestore/remote/RemoteEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;",
            "Lcom/google/firebase/firestore/remote/RemoteEvent;",
            ")V"
        }
    .end annotation

    .line 631
    .local p1, "changes":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .local v0, "newSnapshots":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/ViewSnapshot;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 634
    .local v1, "documentChangesInAllViews":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/local/LocalViewChanges;>;"
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 635
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/core/QueryView;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/core/QueryView;

    .line 636
    .local v4, "queryView":Lcom/google/firebase/firestore/core/QueryView;
    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/QueryView;->getView()Lcom/google/firebase/firestore/core/View;

    move-result-object v5

    .line 637
    .local v5, "view":Lcom/google/firebase/firestore/core/View;
    invoke-virtual {v5, p1}, Lcom/google/firebase/firestore/core/View;->computeDocChanges(Lcom/google/firebase/database/collection/ImmutableSortedMap;)Lcom/google/firebase/firestore/core/View$DocumentChanges;

    move-result-object v6

    .line 638
    .local v6, "viewDocChanges":Lcom/google/firebase/firestore/core/View$DocumentChanges;
    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/View$DocumentChanges;->needsRefill()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 642
    iget-object v7, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    .line 643
    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/QueryView;->getQuery()Lcom/google/firebase/firestore/core/Query;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/google/firebase/firestore/local/LocalStore;->executeQuery(Lcom/google/firebase/firestore/core/Query;Z)Lcom/google/firebase/firestore/local/QueryResult;

    move-result-object v7

    .line 644
    .local v7, "queryResult":Lcom/google/firebase/firestore/local/QueryResult;
    invoke-virtual {v7}, Lcom/google/firebase/firestore/local/QueryResult;->getDocuments()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v8

    invoke-virtual {v5, v8, v6}, Lcom/google/firebase/firestore/core/View;->computeDocChanges(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/firestore/core/View$DocumentChanges;)Lcom/google/firebase/firestore/core/View$DocumentChanges;

    move-result-object v6

    .line 647
    .end local v7    # "queryResult":Lcom/google/firebase/firestore/local/QueryResult;
    :cond_0
    if-nez p2, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/google/firebase/firestore/remote/RemoteEvent;->getTargetChanges()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/QueryView;->getTargetId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/firestore/remote/TargetChange;

    .line 648
    .local v7, "targetChange":Lcom/google/firebase/firestore/remote/TargetChange;
    :goto_1
    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/QueryView;->getView()Lcom/google/firebase/firestore/core/View;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lcom/google/firebase/firestore/core/View;->applyChanges(Lcom/google/firebase/firestore/core/View$DocumentChanges;Lcom/google/firebase/firestore/remote/TargetChange;)Lcom/google/firebase/firestore/core/ViewChange;

    move-result-object v8

    .line 649
    .local v8, "viewChange":Lcom/google/firebase/firestore/core/ViewChange;
    invoke-virtual {v8}, Lcom/google/firebase/firestore/core/ViewChange;->getLimboChanges()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/QueryView;->getTargetId()I

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/google/firebase/firestore/core/SyncEngine;->updateTrackedLimboDocuments(Ljava/util/List;I)V

    .line 651
    invoke-virtual {v8}, Lcom/google/firebase/firestore/core/ViewChange;->getSnapshot()Lcom/google/firebase/firestore/core/ViewSnapshot;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 652
    invoke-virtual {v8}, Lcom/google/firebase/firestore/core/ViewChange;->getSnapshot()Lcom/google/firebase/firestore/core/ViewSnapshot;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    nop

    .line 654
    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/QueryView;->getTargetId()I

    move-result v9

    invoke-virtual {v8}, Lcom/google/firebase/firestore/core/ViewChange;->getSnapshot()Lcom/google/firebase/firestore/core/ViewSnapshot;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/firebase/firestore/local/LocalViewChanges;->fromViewSnapshot(ILcom/google/firebase/firestore/core/ViewSnapshot;)Lcom/google/firebase/firestore/local/LocalViewChanges;

    move-result-object v9

    .line 655
    .local v9, "docChanges":Lcom/google/firebase/firestore/local/LocalViewChanges;
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/core/QueryView;>;"
    .end local v4    # "queryView":Lcom/google/firebase/firestore/core/QueryView;
    .end local v5    # "view":Lcom/google/firebase/firestore/core/View;
    .end local v6    # "viewDocChanges":Lcom/google/firebase/firestore/core/View$DocumentChanges;
    .end local v7    # "targetChange":Lcom/google/firebase/firestore/remote/TargetChange;
    .end local v8    # "viewChange":Lcom/google/firebase/firestore/core/ViewChange;
    .end local v9    # "docChanges":Lcom/google/firebase/firestore/local/LocalViewChanges;
    :cond_2
    goto :goto_0

    .line 658
    :cond_3
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->syncEngineListener:Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;

    invoke-interface {v2, v0}, Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;->onViewSnapshots(Ljava/util/List;)V

    .line 659
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v2, v1}, Lcom/google/firebase/firestore/local/LocalStore;->notifyLocalViewChanges(Ljava/util/List;)V

    .line 660
    return-void
.end method

.method private errorIsInteresting(Lio/grpc/Status;)Z
    .locals 4
    .param p1, "error"    # Lio/grpc/Status;

    .line 760
    invoke-virtual {p1}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v0

    .line 761
    .local v0, "code":Lio/grpc/Status$Code;
    invoke-virtual {p1}, Lio/grpc/Status;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lio/grpc/Status;->getDescription()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 763
    .local v1, "description":Ljava/lang/String;
    :goto_0
    sget-object v2, Lio/grpc/Status$Code;->FAILED_PRECONDITION:Lio/grpc/Status$Code;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    const-string v2, "requires an index"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 764
    return v3

    .line 765
    :cond_1
    sget-object v2, Lio/grpc/Status$Code;->PERMISSION_DENIED:Lio/grpc/Status$Code;

    if-ne v0, v2, :cond_2

    .line 766
    return v3

    .line 769
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private failOutstandingPendingWritesAwaitingTasks()V
    .locals 7

    .line 512
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->pendingWritesCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 513
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 514
    .local v3, "task":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    new-instance v4, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    sget-object v5, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->CANCELLED:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    const-string v6, "\'waitForPendingWrites\' task is cancelled due to User change."

    invoke-direct {v4, v6, v5}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 518
    .end local v3    # "task":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    goto :goto_1

    .line 519
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;>;>;"
    :cond_0
    goto :goto_0

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->pendingWritesCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 522
    return-void
.end method

.method private initializeViewAndComputeSnapshot(Lcom/google/firebase/firestore/core/Query;I)Lcom/google/firebase/firestore/core/ViewSnapshot;
    .locals 11
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .param p2, "targetId"    # I

    .line 214
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/firestore/local/LocalStore;->executeQuery(Lcom/google/firebase/firestore/core/Query;Z)Lcom/google/firebase/firestore/local/QueryResult;

    move-result-object v0

    .line 216
    .local v0, "queryResult":Lcom/google/firebase/firestore/local/QueryResult;
    sget-object v2, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;->NONE:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    .line 217
    .local v2, "currentTargetSyncState":Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;
    const/4 v3, 0x0

    .line 221
    .local v3, "synthesizedCurrentChange":Lcom/google/firebase/firestore/remote/TargetChange;
    iget-object v4, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queriesByTarget:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 222
    iget-object v4, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queriesByTarget:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/core/Query;

    .line 223
    .local v4, "mirrorQuery":Lcom/google/firebase/firestore/core/Query;
    iget-object v6, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/core/QueryView;

    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/QueryView;->getView()Lcom/google/firebase/firestore/core/View;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/View;->getSyncState()Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    move-result-object v2

    .line 224
    sget-object v6, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;->SYNCED:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    if-ne v2, v6, :cond_0

    const/4 v5, 0x1

    .line 225
    :cond_0
    invoke-static {v5}, Lcom/google/firebase/firestore/remote/TargetChange;->createSynthesizedTargetChangeForCurrentChange(Z)Lcom/google/firebase/firestore/remote/TargetChange;

    move-result-object v3

    .line 232
    .end local v4    # "mirrorQuery":Lcom/google/firebase/firestore/core/Query;
    :cond_1
    new-instance v4, Lcom/google/firebase/firestore/core/View;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/QueryResult;->getRemoteKeys()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/google/firebase/firestore/core/View;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V

    .line 233
    .local v4, "view":Lcom/google/firebase/firestore/core/View;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/QueryResult;->getDocuments()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/firebase/firestore/core/View;->computeDocChanges(Lcom/google/firebase/database/collection/ImmutableSortedMap;)Lcom/google/firebase/firestore/core/View$DocumentChanges;

    move-result-object v5

    .line 234
    .local v5, "viewDocChanges":Lcom/google/firebase/firestore/core/View$DocumentChanges;
    invoke-virtual {v4, v5, v3}, Lcom/google/firebase/firestore/core/View;->applyChanges(Lcom/google/firebase/firestore/core/View$DocumentChanges;Lcom/google/firebase/firestore/remote/TargetChange;)Lcom/google/firebase/firestore/core/ViewChange;

    move-result-object v6

    .line 235
    .local v6, "viewChange":Lcom/google/firebase/firestore/core/ViewChange;
    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/ViewChange;->getLimboChanges()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Lcom/google/firebase/firestore/core/SyncEngine;->updateTrackedLimboDocuments(Ljava/util/List;I)V

    .line 237
    new-instance v7, Lcom/google/firebase/firestore/core/QueryView;

    invoke-direct {v7, p1, p2, v4}, Lcom/google/firebase/firestore/core/QueryView;-><init>(Lcom/google/firebase/firestore/core/Query;ILcom/google/firebase/firestore/core/View;)V

    .line 238
    .local v7, "queryView":Lcom/google/firebase/firestore/core/QueryView;
    iget-object v8, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v8, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v8, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queriesByTarget:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 243
    iget-object v8, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queriesByTarget:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queriesByTarget:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/ViewChange;->getSnapshot()Lcom/google/firebase/firestore/core/ViewSnapshot;

    move-result-object v1

    return-object v1
.end method

.method private varargs logErrorIfInteresting(Lio/grpc/Status;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "error"    # Lio/grpc/Status;
    .param p2, "contextString"    # Ljava/lang/String;
    .param p3, "contextArgs"    # [Ljava/lang/Object;

    .line 753
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/core/SyncEngine;->errorIsInteresting(Lio/grpc/Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "context":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "Firestore"

    const-string v3, "%s: %s"

    invoke-static {v2, v3, v1}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 757
    .end local v0    # "context":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private notifyUser(ILio/grpc/Status;)V
    .locals 4
    .param p1, "batchId"    # I
    .param p2, "status"    # Lio/grpc/Status;

    .line 574
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->mutationUserCallbacks:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->currentUser:Lcom/google/firebase/firestore/auth/User;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 578
    .local v0, "userTasks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;>;"
    if-eqz v0, :cond_1

    .line 579
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 580
    .local v1, "boxedBatchId":Ljava/lang/Integer;
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 581
    .local v2, "userTask":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    if-eqz v2, :cond_1

    .line 582
    if-eqz p2, :cond_0

    .line 583
    invoke-static {p2}, Lcom/google/firebase/firestore/util/Util;->exceptionFromStatus(Lio/grpc/Status;)Lcom/google/firebase/firestore/FirebaseFirestoreException;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 585
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 587
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    .end local v1    # "boxedBatchId":Ljava/lang/Integer;
    .end local v2    # "userTask":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    :cond_1
    return-void
.end method

.method private pumpEnqueuedLimboResolutions()V
    .locals 11

    .line 703
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->enqueuedLimboResolutions:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboTargetsByKey:Ljava/util/Map;

    .line 704
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->maxConcurrentLimboResolutions:I

    if-ge v0, v1, :cond_0

    .line 705
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->enqueuedLimboResolutions:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 706
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 707
    .local v1, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 708
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->targetIdGenerator:Lcom/google/firebase/firestore/core/TargetIdGenerator;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/TargetIdGenerator;->nextId()I

    move-result v2

    .line 709
    .local v2, "limboTargetId":I
    iget-object v3, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboResolutionsByTarget:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;

    invoke-direct {v5, v1}, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    iget-object v3, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboTargetsByKey:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    iget-object v9, p0, Lcom/google/firebase/firestore/core/SyncEngine;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    new-instance v10, Lcom/google/firebase/firestore/local/TargetData;

    .line 713
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/firestore/core/Query;->atPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/core/Query;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/Query;->toTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v4

    const-wide/16 v6, -0x1

    sget-object v8, Lcom/google/firebase/firestore/local/QueryPurpose;->LIMBO_RESOLUTION:Lcom/google/firebase/firestore/local/QueryPurpose;

    move-object v3, v10

    move v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/firebase/firestore/local/TargetData;-><init>(Lcom/google/firebase/firestore/core/Target;IJLcom/google/firebase/firestore/local/QueryPurpose;)V

    .line 711
    invoke-virtual {v9, v10}, Lcom/google/firebase/firestore/remote/RemoteStore;->listen(Lcom/google/firebase/firestore/local/TargetData;)V

    .line 717
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    .end local v1    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    .end local v2    # "limboTargetId":I
    goto :goto_0

    .line 718
    :cond_0
    return-void
.end method

.method private removeAndCleanupTarget(ILio/grpc/Status;)V
    .locals 4
    .param p1, "targetId"    # I
    .param p2, "status"    # Lio/grpc/Status;

    .line 593
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queriesByTarget:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/Query;

    .line 594
    .local v1, "query":Lcom/google/firebase/firestore/core/Query;
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    invoke-virtual {p2}, Lio/grpc/Status;->isOk()Z

    move-result v2

    if-nez v2, :cond_0

    .line 596
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->syncEngineListener:Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;

    invoke-interface {v2, v1, p2}, Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;->onError(Lcom/google/firebase/firestore/core/Query;Lio/grpc/Status;)V

    .line 597
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v3, "Listen for %s failed"

    invoke-direct {p0, p2, v3, v2}, Lcom/google/firebase/firestore/core/SyncEngine;->logErrorIfInteresting(Lio/grpc/Status;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    .end local v1    # "query":Lcom/google/firebase/firestore/core/Query;
    :cond_0
    goto :goto_0

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queriesByTarget:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->limboDocumentRefs:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/ReferenceSet;->referencesForId(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    .line 603
    .local v0, "limboKeys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->limboDocumentRefs:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/local/ReferenceSet;->removeReferencesForId(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 604
    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 605
    .local v2, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v3, p0, Lcom/google/firebase/firestore/core/SyncEngine;->limboDocumentRefs:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v3, v2}, Lcom/google/firebase/firestore/local/ReferenceSet;->containsKey(Lcom/google/firebase/firestore/model/DocumentKey;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 607
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/core/SyncEngine;->removeLimboTarget(Lcom/google/firebase/firestore/model/DocumentKey;)V

    .line 609
    .end local v2    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    :cond_2
    goto :goto_1

    .line 610
    :cond_3
    return-void
.end method

.method private removeLimboTarget(Lcom/google/firebase/firestore/model/DocumentKey;)V
    .locals 3
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 613
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->enqueuedLimboResolutions:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 616
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboTargetsByKey:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 617
    .local v0, "targetId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 618
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/RemoteStore;->stopListening(I)V

    .line 619
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboTargetsByKey:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboResolutionsByTarget:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/SyncEngine;->pumpEnqueuedLimboResolutions()V

    .line 623
    :cond_0
    return-void
.end method

.method private resolvePendingWriteTasks(I)V
    .locals 3
    .param p1, "batchId"    # I

    .line 501
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->pendingWritesCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->pendingWritesCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 503
    .local v1, "task":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 504
    .end local v1    # "task":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    goto :goto_0

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->pendingWritesCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    :cond_1
    return-void
.end method

.method private trackLimboChange(Lcom/google/firebase/firestore/core/LimboDocumentChange;)V
    .locals 4
    .param p1, "change"    # Lcom/google/firebase/firestore/core/LimboDocumentChange;

    .line 686
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/LimboDocumentChange;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    .line 687
    .local v0, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboTargetsByKey:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->enqueuedLimboResolutions:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 688
    sget-object v1, Lcom/google/firebase/firestore/core/SyncEngine;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "New document in limbo: %s"

    invoke-static {v1, v3, v2}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 689
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->enqueuedLimboResolutions:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 690
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/SyncEngine;->pumpEnqueuedLimboResolutions()V

    .line 692
    :cond_0
    return-void
.end method

.method private updateTrackedLimboDocuments(Ljava/util/List;I)V
    .locals 6
    .param p2, "targetId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/LimboDocumentChange;",
            ">;I)V"
        }
    .end annotation

    .line 664
    .local p1, "limboChanges":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/LimboDocumentChange;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/LimboDocumentChange;

    .line 665
    .local v1, "limboChange":Lcom/google/firebase/firestore/core/LimboDocumentChange;
    sget-object v2, Lcom/google/firebase/firestore/core/SyncEngine$1;->$SwitchMap$com$google$firebase$firestore$core$LimboDocumentChange$Type:[I

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/LimboDocumentChange;->getType()Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 680
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/LimboDocumentChange;->getType()Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "Unknown limbo change type: %s"

    invoke-static {v2, v0}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 671
    :pswitch_0
    sget-object v2, Lcom/google/firebase/firestore/core/SyncEngine;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/LimboDocumentChange;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "Document no longer in limbo: %s"

    invoke-static {v2, v3, v4}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/LimboDocumentChange;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    .line 673
    .local v2, "limboDocKey":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v3, p0, Lcom/google/firebase/firestore/core/SyncEngine;->limboDocumentRefs:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v3, v2, p2}, Lcom/google/firebase/firestore/local/ReferenceSet;->removeReference(Lcom/google/firebase/firestore/model/DocumentKey;I)V

    .line 674
    iget-object v3, p0, Lcom/google/firebase/firestore/core/SyncEngine;->limboDocumentRefs:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v3, v2}, Lcom/google/firebase/firestore/local/ReferenceSet;->containsKey(Lcom/google/firebase/firestore/model/DocumentKey;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 676
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/core/SyncEngine;->removeLimboTarget(Lcom/google/firebase/firestore/model/DocumentKey;)V

    goto :goto_1

    .line 667
    .end local v2    # "limboDocKey":Lcom/google/firebase/firestore/model/DocumentKey;
    :pswitch_1
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->limboDocumentRefs:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/LimboDocumentChange;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/google/firebase/firestore/local/ReferenceSet;->addReference(Lcom/google/firebase/firestore/model/DocumentKey;I)V

    .line 668
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/core/SyncEngine;->trackLimboChange(Lcom/google/firebase/firestore/core/LimboDocumentChange;)V

    .line 669
    nop

    .line 682
    .end local v1    # "limboChange":Lcom/google/firebase/firestore/core/LimboDocumentChange;
    :cond_0
    :goto_1
    goto :goto_0

    .line 683
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getActiveLimboDocumentResolutions()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 723
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboTargetsByKey:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getEnqueuedLimboDocumentResolutions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 729
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->enqueuedLimboResolutions:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRemoteKeysForTarget(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .locals 5
    .param p1, "targetId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboResolutionsByTarget:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;

    .line 382
    .local v0, "limboResolution":Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;->access$000(Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v1

    invoke-static {v0}, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;->access$100(Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v1

    return-object v1

    .line 385
    :cond_0
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v1

    .line 386
    .local v1, "remoteKeys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queriesByTarget:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 387
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queriesByTarget:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/Query;

    .line 388
    .local v3, "query":Lcom/google/firebase/firestore/core/Query;
    iget-object v4, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 389
    iget-object v4, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queryViewsByQuery:Ljava/util/Map;

    .line 390
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/core/QueryView;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/QueryView;->getView()Lcom/google/firebase/firestore/core/View;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/View;->getSyncedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->unionWith(Lcom/google/firebase/database/collection/ImmutableSortedSet;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v1

    .line 392
    .end local v3    # "query":Lcom/google/firebase/firestore/core/Query;
    :cond_1
    goto :goto_0

    .line 395
    :cond_2
    return-object v1
.end method

.method public handleCredentialChange(Lcom/google/firebase/firestore/auth/User;)V
    .locals 3
    .param p1, "user"    # Lcom/google/firebase/firestore/auth/User;

    .line 733
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->currentUser:Lcom/google/firebase/firestore/auth/User;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/auth/User;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 734
    .local v0, "userChanged":Z
    iput-object p1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->currentUser:Lcom/google/firebase/firestore/auth/User;

    .line 736
    if-eqz v0, :cond_0

    .line 738
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/SyncEngine;->failOutstandingPendingWritesAwaitingTasks()V

    .line 740
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/local/LocalStore;->handleUserChange(Lcom/google/firebase/firestore/auth/User;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v1

    .line 741
    .local v1, "changes":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/firestore/core/SyncEngine;->emitNewSnapsAndNotifyLocalStore(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/firestore/remote/RemoteEvent;)V

    .line 745
    .end local v1    # "changes":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/RemoteStore;->handleCredentialChange()V

    .line 746
    return-void
.end method

.method public handleOnlineStateChange(Lcom/google/firebase/firestore/core/OnlineState;)V
    .locals 8
    .param p1, "onlineState"    # Lcom/google/firebase/firestore/core/OnlineState;

    .line 364
    const-string v0, "handleOnlineStateChange"

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/SyncEngine;->assertCallback(Ljava/lang/String;)V

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v0, "newViewSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/firestore/core/ViewSnapshot;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queryViewsByQuery:Ljava/util/Map;

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

    .line 367
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/core/QueryView;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/QueryView;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/QueryView;->getView()Lcom/google/firebase/firestore/core/View;

    move-result-object v3

    .line 368
    .local v3, "view":Lcom/google/firebase/firestore/core/View;
    invoke-virtual {v3, p1}, Lcom/google/firebase/firestore/core/View;->applyOnlineStateChange(Lcom/google/firebase/firestore/core/OnlineState;)Lcom/google/firebase/firestore/core/ViewChange;

    move-result-object v4

    .line 369
    .local v4, "viewChange":Lcom/google/firebase/firestore/core/ViewChange;
    nop

    .line 370
    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/ViewChange;->getLimboChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 369
    const-string v7, "OnlineState should not affect limbo documents."

    invoke-static {v5, v7, v6}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 371
    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/ViewChange;->getSnapshot()Lcom/google/firebase/firestore/core/ViewSnapshot;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 372
    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/ViewChange;->getSnapshot()Lcom/google/firebase/firestore/core/ViewSnapshot;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/core/QueryView;>;"
    .end local v3    # "view":Lcom/google/firebase/firestore/core/View;
    .end local v4    # "viewChange":Lcom/google/firebase/firestore/core/ViewChange;
    :cond_0
    goto :goto_0

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->syncEngineListener:Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;

    invoke-interface {v1, v0}, Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;->onViewSnapshots(Ljava/util/List;)V

    .line 376
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->syncEngineListener:Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;

    invoke-interface {v1, p1}, Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;->handleOnlineStateChange(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 377
    return-void
.end method

.method public handleRejectedListen(ILio/grpc/Status;)V
    .locals 12
    .param p1, "targetId"    # I
    .param p2, "error"    # Lio/grpc/Status;

    .line 402
    const-string v0, "handleRejectedListen"

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/SyncEngine;->assertCallback(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboResolutionsByTarget:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;

    .line 405
    .local v0, "limboResolution":Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;->access$100(Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 406
    .local v1, "limboKey":Lcom/google/firebase/firestore/model/DocumentKey;
    :goto_0
    if-eqz v1, :cond_1

    .line 409
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboTargetsByKey:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboResolutionsByTarget:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/SyncEngine;->pumpEnqueuedLimboResolutions()V

    .line 418
    sget-object v2, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/model/MutableDocument;->newNoDocument(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v2

    .line 419
    .local v2, "result":Lcom/google/firebase/firestore/model/MutableDocument;
    nop

    .line 420
    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    .line 421
    .local v9, "documentUpdates":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    .line 422
    .local v10, "limboDocuments":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    new-instance v11, Lcom/google/firebase/firestore/remote/RemoteEvent;

    sget-object v4, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 425
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    .line 426
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    move-object v3, v11

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/google/firebase/firestore/remote/RemoteEvent;-><init>(Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;)V

    .line 429
    .local v3, "event":Lcom/google/firebase/firestore/remote/RemoteEvent;
    invoke-virtual {p0, v3}, Lcom/google/firebase/firestore/core/SyncEngine;->handleRemoteEvent(Lcom/google/firebase/firestore/remote/RemoteEvent;)V

    .line 430
    .end local v2    # "result":Lcom/google/firebase/firestore/model/MutableDocument;
    .end local v3    # "event":Lcom/google/firebase/firestore/remote/RemoteEvent;
    .end local v9    # "documentUpdates":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    .end local v10    # "limboDocuments":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    goto :goto_1

    .line 431
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v2, p1}, Lcom/google/firebase/firestore/local/LocalStore;->releaseTarget(I)V

    .line 432
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/core/SyncEngine;->removeAndCleanupTarget(ILio/grpc/Status;)V

    .line 434
    :goto_1
    return-void
.end method

.method public handleRejectedWrite(ILio/grpc/Status;)V
    .locals 4
    .param p1, "batchId"    # I
    .param p2, "status"    # Lio/grpc/Status;

    .line 455
    const-string v0, "handleRejectedWrite"

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/SyncEngine;->assertCallback(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/LocalStore;->rejectBatch(I)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    .line 458
    .local v0, "changes":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 459
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->getMinKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Write failed at %s"

    invoke-direct {p0, p2, v2, v1}, Lcom/google/firebase/firestore/core/SyncEngine;->logErrorIfInteresting(Lio/grpc/Status;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/core/SyncEngine;->notifyUser(ILio/grpc/Status;)V

    .line 467
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/core/SyncEngine;->resolvePendingWriteTasks(I)V

    .line 469
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/core/SyncEngine;->emitNewSnapsAndNotifyLocalStore(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/firestore/remote/RemoteEvent;)V

    .line 470
    return-void
.end method

.method public handleRemoteEvent(Lcom/google/firebase/firestore/remote/RemoteEvent;)V
    .locals 10
    .param p1, "event"    # Lcom/google/firebase/firestore/remote/RemoteEvent;

    .line 324
    const-string v0, "handleRemoteEvent"

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/SyncEngine;->assertCallback(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/RemoteEvent;->getTargetChanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 328
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/firebase/firestore/remote/TargetChange;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 329
    .local v2, "targetId":Ljava/lang/Integer;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/remote/TargetChange;

    .line 330
    .local v3, "targetChange":Lcom/google/firebase/firestore/remote/TargetChange;
    iget-object v4, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboResolutionsByTarget:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;

    .line 331
    .local v4, "limboResolution":Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;
    if-eqz v4, :cond_3

    .line 334
    nop

    .line 335
    invoke-virtual {v3}, Lcom/google/firebase/firestore/remote/TargetChange;->getAddedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v5

    .line 336
    invoke-virtual {v3}, Lcom/google/firebase/firestore/remote/TargetChange;->getModifiedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v6

    add-int/2addr v5, v6

    .line 337
    invoke-virtual {v3}, Lcom/google/firebase/firestore/remote/TargetChange;->getRemovedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-gt v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    new-array v8, v7, [Ljava/lang/Object;

    .line 334
    const-string v9, "Limbo resolution for single document contains multiple changes."

    invoke-static {v5, v9, v8}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 340
    invoke-virtual {v3}, Lcom/google/firebase/firestore/remote/TargetChange;->getAddedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 341
    invoke-static {v4, v6}, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;->access$002(Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;Z)Z

    goto :goto_2

    .line 342
    :cond_1
    invoke-virtual {v3}, Lcom/google/firebase/firestore/remote/TargetChange;->getModifiedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 343
    nop

    .line 344
    invoke-static {v4}, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;->access$000(Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;)Z

    move-result v5

    new-array v6, v7, [Ljava/lang/Object;

    .line 343
    const-string v7, "Received change for limbo target document without add."

    invoke-static {v5, v7, v6}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 346
    :cond_2
    invoke-virtual {v3}, Lcom/google/firebase/firestore/remote/TargetChange;->getRemovedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 347
    nop

    .line 348
    invoke-static {v4}, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;->access$000(Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;)Z

    move-result v5

    new-array v6, v7, [Ljava/lang/Object;

    .line 347
    const-string v8, "Received remove for limbo target document without add."

    invoke-static {v5, v8, v6}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 350
    invoke-static {v4, v7}, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;->access$002(Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;Z)Z

    .line 355
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/firebase/firestore/remote/TargetChange;>;"
    .end local v2    # "targetId":Ljava/lang/Integer;
    .end local v3    # "targetChange":Lcom/google/firebase/firestore/remote/TargetChange;
    .end local v4    # "limboResolution":Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;
    :cond_3
    :goto_2
    goto/16 :goto_0

    .line 357
    :cond_4
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/LocalStore;->applyRemoteEvent(Lcom/google/firebase/firestore/remote/RemoteEvent;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    .line 358
    .local v0, "changes":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/firestore/core/SyncEngine;->emitNewSnapsAndNotifyLocalStore(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/firestore/remote/RemoteEvent;)V

    .line 359
    return-void
.end method

.method public handleSuccessfulWrite(Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)V
    .locals 2
    .param p1, "mutationBatchResult"    # Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;

    .line 438
    const-string v0, "handleSuccessfulWrite"

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/SyncEngine;->assertCallback(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->getBatch()Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/core/SyncEngine;->notifyUser(ILio/grpc/Status;)V

    .line 445
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->getBatch()Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/SyncEngine;->resolvePendingWriteTasks(I)V

    .line 447
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    .line 448
    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/LocalStore;->acknowledgeBatch(Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    .line 450
    .local v0, "changes":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/core/SyncEngine;->emitNewSnapsAndNotifyLocalStore(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/firestore/remote/RemoteEvent;)V

    .line 451
    return-void
.end method

.method public listen(Lcom/google/firebase/firestore/core/Query;)I
    .locals 4
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;

    .line 201
    const-string v0, "listen"

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/SyncEngine;->assertCallback(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "We already listen to query: %s"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->toTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/LocalStore;->allocateTarget(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v0

    .line 205
    .local v0, "targetData":Lcom/google/firebase/firestore/local/TargetData;
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/remote/RemoteStore;->listen(Lcom/google/firebase/firestore/local/TargetData;)V

    .line 207
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/google/firebase/firestore/core/SyncEngine;->initializeViewAndComputeSnapshot(Lcom/google/firebase/firestore/core/Query;I)Lcom/google/firebase/firestore/core/ViewSnapshot;

    move-result-object v1

    .line 208
    .local v1, "viewSnapshot":Lcom/google/firebase/firestore/core/ViewSnapshot;
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->syncEngineListener:Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;->onViewSnapshots(Ljava/util/List;)V

    .line 210
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v2

    return v2
.end method

.method public loadBundle(Lcom/google/firebase/firestore/bundle/BundleReader;Lcom/google/firebase/firestore/LoadBundleTask;)V
    .locals 18
    .param p1, "bundleReader"    # Lcom/google/firebase/firestore/bundle/BundleReader;
    .param p2, "resultTask"    # Lcom/google/firebase/firestore/LoadBundleTask;

    .line 526
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "Exception while closing bundle"

    const-string v4, "SyncEngine"

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/bundle/BundleReader;->getBundleMetadata()Lcom/google/firebase/firestore/bundle/BundleMetadata;

    move-result-object v0

    move-object v7, v0

    .line 527
    .local v7, "bundleMetadata":Lcom/google/firebase/firestore/bundle/BundleMetadata;
    iget-object v0, v1, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v0, v7}, Lcom/google/firebase/firestore/local/LocalStore;->hasNewerBundle(Lcom/google/firebase/firestore/bundle/BundleMetadata;)Z

    move-result v0

    move v8, v0

    .line 528
    .local v8, "hasNewerBundle":Z
    if-eqz v8, :cond_0

    .line 529
    invoke-static {v7}, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->forSuccess(Lcom/google/firebase/firestore/bundle/BundleMetadata;)Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/firebase/firestore/LoadBundleTask;->setResult(Lcom/google/firebase/firestore/LoadBundleTaskProgress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/bundle/BundleReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 568
    goto :goto_0

    .line 566
    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 567
    .local v0, "e":Ljava/io/IOException;
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    invoke-static {v4, v3, v6}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 533
    :cond_0
    :try_start_2
    invoke-static {v7}, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->forInitial(Lcom/google/firebase/firestore/bundle/BundleMetadata;)Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    move-result-object v0

    .line 534
    .local v0, "progress":Lcom/google/firebase/firestore/LoadBundleTaskProgress;
    invoke-virtual {v2, v0}, Lcom/google/firebase/firestore/LoadBundleTask;->updateProgress(Lcom/google/firebase/firestore/LoadBundleTaskProgress;)V

    .line 536
    new-instance v9, Lcom/google/firebase/firestore/bundle/BundleLoader;

    iget-object v10, v1, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-direct {v9, v10, v7}, Lcom/google/firebase/firestore/bundle/BundleLoader;-><init>(Lcom/google/firebase/firestore/bundle/BundleCallback;Lcom/google/firebase/firestore/bundle/BundleMetadata;)V

    .line 538
    .local v9, "bundleLoader":Lcom/google/firebase/firestore/bundle/BundleLoader;
    const-wide/16 v10, 0x0

    .line 540
    .local v10, "currentBytesRead":J
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/bundle/BundleReader;->getNextElement()Lcom/google/firebase/firestore/bundle/BundleElement;

    move-result-object v12

    move-object v13, v12

    .local v13, "bundleElement":Lcom/google/firebase/firestore/bundle/BundleElement;
    if-eqz v12, :cond_2

    .line 541
    move-wide v14, v10

    .line 542
    .local v14, "oldBytesRead":J
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/bundle/BundleReader;->getBytesRead()J

    move-result-wide v16

    move-wide/from16 v10, v16

    .line 543
    sub-long v5, v10, v14

    invoke-virtual {v9, v13, v5, v6}, Lcom/google/firebase/firestore/bundle/BundleLoader;->addElement(Lcom/google/firebase/firestore/bundle/BundleElement;J)Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    move-result-object v5

    move-object v0, v5

    .line 544
    if-eqz v0, :cond_1

    .line 545
    invoke-virtual {v2, v0}, Lcom/google/firebase/firestore/LoadBundleTask;->updateProgress(Lcom/google/firebase/firestore/LoadBundleTaskProgress;)V

    .line 547
    .end local v14    # "oldBytesRead":J
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_1

    .line 549
    :cond_2
    invoke-virtual {v9}, Lcom/google/firebase/firestore/bundle/BundleLoader;->applyChanges()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v5

    .line 553
    .local v5, "changes":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Lcom/google/firebase/firestore/core/SyncEngine;->emitNewSnapsAndNotifyLocalStore(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/firestore/remote/RemoteEvent;)V

    .line 556
    iget-object v6, v1, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v6, v7}, Lcom/google/firebase/firestore/local/LocalStore;->saveBundle(Lcom/google/firebase/firestore/bundle/BundleMetadata;)V

    .line 557
    invoke-static {v7}, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->forSuccess(Lcom/google/firebase/firestore/bundle/BundleMetadata;)Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/firebase/firestore/LoadBundleTask;->setResult(Lcom/google/firebase/firestore/LoadBundleTaskProgress;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 565
    .end local v0    # "progress":Lcom/google/firebase/firestore/LoadBundleTaskProgress;
    .end local v5    # "changes":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    .end local v7    # "bundleMetadata":Lcom/google/firebase/firestore/bundle/BundleMetadata;
    .end local v8    # "hasNewerBundle":Z
    .end local v9    # "bundleLoader":Lcom/google/firebase/firestore/bundle/BundleLoader;
    .end local v10    # "currentBytesRead":J
    .end local v13    # "bundleElement":Lcom/google/firebase/firestore/bundle/BundleElement;
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/bundle/BundleReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 566
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 567
    .local v0, "e":Ljava/io/IOException;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v3, v5}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 564
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    move-object v5, v0

    goto :goto_5

    .line 558
    :catch_2
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "Firestore"

    const-string v6, "Loading bundle failed : %s"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v8, v7

    invoke-static {v5, v6, v8}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    new-instance v5, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    const-string v6, "Bundle failed to load"

    sget-object v7, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->INVALID_ARGUMENT:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    invoke-direct {v5, v6, v7, v0}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v5}, Lcom/google/firebase/firestore/LoadBundleTask;->setException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 565
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/bundle/BundleReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 568
    :goto_2
    goto :goto_4

    .line 566
    :catch_3
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 567
    .local v0, "e":Ljava/io/IOException;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v3, v5}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    nop

    .line 570
    :goto_4
    return-void

    .line 565
    :goto_5
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/bundle/BundleReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 568
    goto :goto_6

    .line 566
    :catch_4
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 567
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v4, v3, v6}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    .end local v0    # "e":Ljava/io/IOException;
    :goto_6
    throw v5
.end method

.method public registerPendingWritesTask(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 477
    .local p1, "userTask":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/RemoteStore;->canUseNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    sget-object v0, Lcom/google/firebase/firestore/core/SyncEngine;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "The network is disabled. The task returned by \'awaitPendingWrites()\' will not complete until the network is enabled."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/LocalStore;->getHighestUnacknowledgedBatchId()I

    move-result v0

    .line 486
    .local v0, "largestPendingBatchId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 488
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 489
    return-void

    .line 492
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->pendingWritesCallbacks:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 493
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->pendingWritesCallbacks:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->pendingWritesCallbacks:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    return-void
.end method

.method public runCountQuery(Lcom/google/firebase/firestore/core/Query;)Lcom/google/android/gms/tasks/Task;
    .locals 1
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

    .line 318
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/RemoteStore;->runCountQuery(Lcom/google/firebase/firestore/core/Query;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public setCallback(Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;

    .line 186
    iput-object p1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->syncEngineListener:Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;

    .line 187
    return-void
.end method

.method stopListening(Lcom/google/firebase/firestore/core/Query;)V
    .locals 4
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;

    .line 252
    const-string v0, "stopListening"

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/SyncEngine;->assertCallback(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/QueryView;

    .line 255
    .local v0, "queryView":Lcom/google/firebase/firestore/core/QueryView;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Trying to stop listening to a query not found"

    invoke-static {v2, v3, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/QueryView;->getTargetId()I

    move-result v1

    .line 260
    .local v1, "targetId":I
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queriesByTarget:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 261
    .local v2, "targetQueries":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Query;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 263
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 264
    iget-object v3, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v3, v1}, Lcom/google/firebase/firestore/local/LocalStore;->releaseTarget(I)V

    .line 265
    iget-object v3, p0, Lcom/google/firebase/firestore/core/SyncEngine;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-virtual {v3, v1}, Lcom/google/firebase/firestore/remote/RemoteStore;->stopListening(I)V

    .line 266
    sget-object v3, Lio/grpc/Status;->OK:Lio/grpc/Status;

    invoke-direct {p0, v1, v3}, Lcom/google/firebase/firestore/core/SyncEngine;->removeAndCleanupTarget(ILio/grpc/Status;)V

    .line 268
    :cond_1
    return-void
.end method

.method public transaction(Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/TransactionOptions;Lcom/google/firebase/firestore/util/Function;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1, "asyncQueue"    # Lcom/google/firebase/firestore/util/AsyncQueue;
    .param p2, "options"    # Lcom/google/firebase/firestore/TransactionOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/firestore/util/AsyncQueue;",
            "Lcom/google/firebase/firestore/TransactionOptions;",
            "Lcom/google/firebase/firestore/util/Function<",
            "Lcom/google/firebase/firestore/core/Transaction;",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 314
    .local p3, "updateFunction":Lcom/google/firebase/firestore/util/Function;, "Lcom/google/firebase/firestore/util/Function<Lcom/google/firebase/firestore/core/Transaction;Lcom/google/android/gms/tasks/Task<TTResult;>;>;"
    new-instance v0, Lcom/google/firebase/firestore/core/TransactionRunner;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/google/firebase/firestore/core/TransactionRunner;-><init>(Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/remote/RemoteStore;Lcom/google/firebase/firestore/TransactionOptions;Lcom/google/firebase/firestore/util/Function;)V

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/TransactionRunner;->run()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public writeMutations(Ljava/util/List;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/Mutation;",
            ">;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 277
    .local p1, "mutations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/Mutation;>;"
    .local p2, "userTask":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    const-string v0, "writeMutations"

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/SyncEngine;->assertCallback(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/LocalStore;->writeLocally(Ljava/util/List;)Lcom/google/firebase/firestore/local/LocalDocumentsResult;

    move-result-object v0

    .line 280
    .local v0, "result":Lcom/google/firebase/firestore/local/LocalDocumentsResult;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/LocalDocumentsResult;->getBatchId()I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/google/firebase/firestore/core/SyncEngine;->addUserCallback(ILcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 282
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/LocalDocumentsResult;->getDocuments()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/firestore/core/SyncEngine;->emitNewSnapsAndNotifyLocalStore(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/firestore/remote/RemoteEvent;)V

    .line 283
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/RemoteStore;->fillWritePipeline()V

    .line 284
    return-void
.end method
