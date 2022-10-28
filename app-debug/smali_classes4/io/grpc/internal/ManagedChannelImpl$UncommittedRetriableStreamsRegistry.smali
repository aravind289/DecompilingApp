.class final Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UncommittedRetriableStreamsRegistry"
.end annotation


# instance fields
.field final lock:Ljava/lang/Object;

.field shutdownStatus:Lio/grpc/Status;

.field final synthetic this$0:Lio/grpc/internal/ManagedChannelImpl;

.field uncommittedRetriableStreams:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/grpc/internal/ClientStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0

    .line 1374
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1377
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->lock:Ljava/lang/Object;

    .line 1379
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->uncommittedRetriableStreams:Ljava/util/Collection;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p2, "x1"    # Lio/grpc/internal/ManagedChannelImpl$1;

    .line 1374
    invoke-direct {p0, p1}, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    return-void
.end method


# virtual methods
.method add(Lio/grpc/internal/RetriableStream;)Lio/grpc/Status;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/RetriableStream<",
            "*>;)",
            "Lio/grpc/Status;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1425
    .local p1, "retriableStream":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<*>;"
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1426
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->shutdownStatus:Lio/grpc/Status;

    if-eqz v1, :cond_0

    .line 1427
    monitor-exit v0

    return-object v1

    .line 1429
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->uncommittedRetriableStreams:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1430
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 1431
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onShutdown(Lio/grpc/Status;)V
    .locals 3
    .param p1, "reason"    # Lio/grpc/Status;

    .line 1386
    const/4 v0, 0x0

    .line 1387
    .local v0, "shouldShutdownDelayedTransport":Z
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1388
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->shutdownStatus:Lio/grpc/Status;

    if-eqz v2, :cond_0

    .line 1389
    monitor-exit v1

    return-void

    .line 1391
    :cond_0
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->shutdownStatus:Lio/grpc/Status;

    .line 1395
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->uncommittedRetriableStreams:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1396
    const/4 v0, 0x1

    .line 1398
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1400
    if-eqz v0, :cond_2

    .line 1401
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$1600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/DelayedClientTransport;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/grpc/internal/DelayedClientTransport;->shutdown(Lio/grpc/Status;)V

    .line 1403
    :cond_2
    return-void

    .line 1398
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method onShutdownNow(Lio/grpc/Status;)V
    .locals 3
    .param p1, "reason"    # Lio/grpc/Status;

    .line 1406
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->onShutdown(Lio/grpc/Status;)V

    .line 1409
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1410
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->uncommittedRetriableStreams:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1411
    .local v1, "streams":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/ClientStream;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1413
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/ClientStream;

    .line 1414
    .local v2, "stream":Lio/grpc/internal/ClientStream;
    invoke-interface {v2, p1}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    .line 1415
    .end local v2    # "stream":Lio/grpc/internal/ClientStream;
    goto :goto_0

    .line 1416
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$1600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/DelayedClientTransport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/internal/DelayedClientTransport;->shutdownNow(Lio/grpc/Status;)V

    .line 1417
    return-void

    .line 1411
    .end local v1    # "streams":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/ClientStream;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method remove(Lio/grpc/internal/RetriableStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/RetriableStream<",
            "*>;)V"
        }
    .end annotation

    .line 1435
    .local p1, "retriableStream":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<*>;"
    const/4 v0, 0x0

    .line 1437
    .local v0, "shutdownStatusCopy":Lio/grpc/Status;
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1438
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->uncommittedRetriableStreams:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1439
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->uncommittedRetriableStreams:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1440
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->shutdownStatus:Lio/grpc/Status;

    move-object v0, v2

    .line 1443
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->uncommittedRetriableStreams:Ljava/util/Collection;

    .line 1445
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1447
    if-eqz v0, :cond_1

    .line 1448
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$1600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/DelayedClientTransport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/grpc/internal/DelayedClientTransport;->shutdown(Lio/grpc/Status;)V

    .line 1450
    :cond_1
    return-void

    .line 1445
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
