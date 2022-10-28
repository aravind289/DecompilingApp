.class final Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;
.super Ljava/lang/Object;
.source "ServerCallImpl.java"

# interfaces
.implements Lio/grpc/internal/ServerStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ServerCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServerStreamListenerImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/internal/ServerStreamListener;"
    }
.end annotation


# instance fields
.field private final call:Lio/grpc/internal/ServerCallImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ServerCallImpl<",
            "TReqT;*>;"
        }
    .end annotation
.end field

.field private final context:Lio/grpc/Context$CancellableContext;

.field private final listener:Lio/grpc/ServerCall$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ServerCall$Listener<",
            "TReqT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/grpc/internal/ServerCallImpl;Lio/grpc/ServerCall$Listener;Lio/grpc/Context$CancellableContext;)V
    .locals 3
    .param p3, "context"    # Lio/grpc/Context$CancellableContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/ServerCallImpl<",
            "TReqT;*>;",
            "Lio/grpc/ServerCall$Listener<",
            "TReqT;>;",
            "Lio/grpc/Context$CancellableContext;",
            ")V"
        }
    .end annotation

    .line 290
    .local p0, "this":Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;, "Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl<TReqT;>;"
    .local p1, "call":Lio/grpc/internal/ServerCallImpl;, "Lio/grpc/internal/ServerCallImpl<TReqT;*>;"
    .local p2, "listener":Lio/grpc/ServerCall$Listener;, "Lio/grpc/ServerCall$Listener<TReqT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ServerCallImpl;

    iput-object v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    .line 292
    const-string v0, "listener must not be null"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ServerCall$Listener;

    iput-object v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->listener:Lio/grpc/ServerCall$Listener;

    .line 293
    const-string v0, "context"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Context$CancellableContext;

    iput-object v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->context:Lio/grpc/Context$CancellableContext;

    .line 297
    new-instance v1, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl$1;

    invoke-direct {v1, p0}, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl$1;-><init>(Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;)V

    .line 308
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 297
    invoke-virtual {v0, v1, v2}, Lio/grpc/Context$CancellableContext;->addListener(Lio/grpc/Context$CancellationListener;Ljava/util/concurrent/Executor;)V

    .line 309
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;)Lio/grpc/internal/ServerCallImpl;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;

    .line 283
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    return-object v0
.end method

.method private closedInternal(Lio/grpc/Status;)V
    .locals 3
    .param p1, "status"    # Lio/grpc/Status;

    .line 372
    .local p0, "this":Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;, "Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl<TReqT;>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->listener:Lio/grpc/ServerCall$Listener;

    invoke-virtual {v1}, Lio/grpc/ServerCall$Listener;->onComplete()V

    goto :goto_0

    .line 375
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lio/grpc/internal/ServerCallImpl;->access$102(Lio/grpc/internal/ServerCallImpl;Z)Z

    .line 376
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->listener:Lio/grpc/ServerCall$Listener;

    invoke-virtual {v1}, Lio/grpc/ServerCall$Listener;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :goto_0
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->context:Lio/grpc/Context$CancellableContext;

    invoke-virtual {v1, v0}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    .line 384
    nop

    .line 385
    return-void

    .line 383
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->context:Lio/grpc/Context$CancellableContext;

    invoke-virtual {v2, v0}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    throw v1
.end method

.method private messagesAvailableInternal(Lio/grpc/internal/StreamListener$MessageProducer;)V
    .locals 3
    .param p1, "producer"    # Lio/grpc/internal/StreamListener$MessageProducer;

    .line 323
    .local p0, "this":Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;, "Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl<TReqT;>;"
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerCallImpl;->access$100(Lio/grpc/internal/ServerCallImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-static {p1}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Lio/grpc/internal/StreamListener$MessageProducer;)V

    .line 325
    return-void

    .line 330
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lio/grpc/internal/StreamListener$MessageProducer;->next()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v0

    .local v1, "message":Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 332
    :try_start_1
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->listener:Lio/grpc/ServerCall$Listener;

    iget-object v2, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v2}, Lio/grpc/internal/ServerCallImpl;->access$300(Lio/grpc/internal/ServerCallImpl;)Lio/grpc/MethodDescriptor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/grpc/MethodDescriptor;->parseRequest(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/ServerCall$Listener;->onMessage(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    nop

    .line 337
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 333
    :catchall_0
    move-exception v0

    .line 334
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 335
    nop

    .end local p1    # "producer":Lio/grpc/internal/StreamListener$MessageProducer;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 343
    .end local v0    # "t":Ljava/lang/Throwable;
    .restart local p1    # "producer":Lio/grpc/internal/StreamListener$MessageProducer;
    :cond_1
    nop

    .line 344
    return-void

    .line 339
    .end local v1    # "message":Ljava/io/InputStream;
    :catchall_1
    move-exception v0

    .line 340
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-static {p1}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Lio/grpc/internal/StreamListener$MessageProducer;)V

    .line 341
    invoke-static {v0}, Lcom/google/common/base/Throwables;->throwIfUnchecked(Ljava/lang/Throwable;)V

    .line 342
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public closed(Lio/grpc/Status;)V
    .locals 3
    .param p1, "status"    # Lio/grpc/Status;

    .line 362
    .local p0, "this":Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;, "Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl<TReqT;>;"
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerCallImpl;->access$200(Lio/grpc/internal/ServerCallImpl;)Lio/perfmark/Tag;

    move-result-object v0

    const-string v1, "ServerStreamListener.closed"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 364
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->closedInternal(Lio/grpc/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerCallImpl;->access$200(Lio/grpc/internal/ServerCallImpl;)Lio/perfmark/Tag;

    move-result-object v0

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 367
    nop

    .line 368
    return-void

    .line 366
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v2}, Lio/grpc/internal/ServerCallImpl;->access$200(Lio/grpc/internal/ServerCallImpl;)Lio/perfmark/Tag;

    move-result-object v2

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v0
.end method

.method public halfClosed()V
    .locals 3

    .line 348
    .local p0, "this":Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;, "Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl<TReqT;>;"
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerCallImpl;->access$200(Lio/grpc/internal/ServerCallImpl;)Lio/perfmark/Tag;

    move-result-object v0

    const-string v1, "ServerStreamListener.halfClosed"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 350
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerCallImpl;->access$100(Lio/grpc/internal/ServerCallImpl;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerCallImpl;->access$200(Lio/grpc/internal/ServerCallImpl;)Lio/perfmark/Tag;

    move-result-object v0

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 351
    return-void

    .line 354
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->listener:Lio/grpc/ServerCall$Listener;

    invoke-virtual {v0}, Lio/grpc/ServerCall$Listener;->onHalfClose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerCallImpl;->access$200(Lio/grpc/internal/ServerCallImpl;)Lio/perfmark/Tag;

    move-result-object v0

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 357
    nop

    .line 358
    return-void

    .line 356
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v2}, Lio/grpc/internal/ServerCallImpl;->access$200(Lio/grpc/internal/ServerCallImpl;)Lio/perfmark/Tag;

    move-result-object v2

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v0
.end method

.method public messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V
    .locals 3
    .param p1, "producer"    # Lio/grpc/internal/StreamListener$MessageProducer;

    .line 313
    .local p0, "this":Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;, "Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl<TReqT;>;"
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerCallImpl;->access$200(Lio/grpc/internal/ServerCallImpl;)Lio/perfmark/Tag;

    move-result-object v0

    const-string v1, "ServerStreamListener.messagesAvailable"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 315
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->messagesAvailableInternal(Lio/grpc/internal/StreamListener$MessageProducer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerCallImpl;->access$200(Lio/grpc/internal/ServerCallImpl;)Lio/perfmark/Tag;

    move-result-object v0

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 318
    nop

    .line 319
    return-void

    .line 317
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v2}, Lio/grpc/internal/ServerCallImpl;->access$200(Lio/grpc/internal/ServerCallImpl;)Lio/perfmark/Tag;

    move-result-object v2

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v0
.end method

.method public onReady()V
    .locals 3

    .line 389
    .local p0, "this":Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;, "Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl<TReqT;>;"
    const-string v0, "ServerCall.closed"

    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v1}, Lio/grpc/internal/ServerCallImpl;->access$200(Lio/grpc/internal/ServerCallImpl;)Lio/perfmark/Tag;

    move-result-object v1

    const-string v2, "ServerStreamListener.onReady"

    invoke-static {v2, v1}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 391
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v1}, Lio/grpc/internal/ServerCallImpl;->access$100(Lio/grpc/internal/ServerCallImpl;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v1}, Lio/grpc/internal/ServerCallImpl;->access$200(Lio/grpc/internal/ServerCallImpl;)Lio/perfmark/Tag;

    move-result-object v1

    invoke-static {v0, v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 392
    return-void

    .line 394
    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->listener:Lio/grpc/ServerCall$Listener;

    invoke-virtual {v1}, Lio/grpc/ServerCall$Listener;->onReady()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v1}, Lio/grpc/internal/ServerCallImpl;->access$200(Lio/grpc/internal/ServerCallImpl;)Lio/perfmark/Tag;

    move-result-object v1

    invoke-static {v0, v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 397
    nop

    .line 398
    return-void

    .line 396
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v2}, Lio/grpc/internal/ServerCallImpl;->access$200(Lio/grpc/internal/ServerCallImpl;)Lio/perfmark/Tag;

    move-result-object v2

    invoke-static {v0, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v1
.end method
