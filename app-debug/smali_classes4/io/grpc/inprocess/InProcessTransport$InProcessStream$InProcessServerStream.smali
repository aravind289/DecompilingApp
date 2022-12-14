.class Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;
.super Ljava/lang/Object;
.source "InProcessTransport.java"

# interfaces
.implements Lio/grpc/internal/ServerStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/inprocess/InProcessTransport$InProcessStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InProcessServerStream"
.end annotation


# instance fields
.field private clientNotifyStatus:Lio/grpc/Status;

.field private clientNotifyTrailers:Lio/grpc/Metadata;

.field private clientReceiveQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/grpc/internal/StreamListener$MessageProducer;",
            ">;"
        }
    .end annotation
.end field

.field private clientRequested:I

.field private clientStreamListener:Lio/grpc/internal/ClientStreamListener;

.field private closed:Z

.field private outboundSeqNo:I

.field final statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

.field final synthetic this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;


# direct methods
.method constructor <init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;)V
    .locals 1
    .param p3, "headers"    # Lio/grpc/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    .line 427
    .local p2, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientReceiveQueue:Ljava/util/ArrayDeque;

    .line 428
    iget-object p1, p1, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    .line 429
    invoke-static {p1}, Lio/grpc/inprocess/InProcessTransport;->access$1100(Lio/grpc/inprocess/InProcessTransport;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-static {p1, v0, p3}, Lio/grpc/internal/StatsTraceContext;->newServerContext(Ljava/util/List;Ljava/lang/String;Lio/grpc/Metadata;)Lio/grpc/internal/StatsTraceContext;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    .line 430
    return-void
.end method

.method static synthetic access$2400(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;I)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;
    .param p1, "x1"    # I

    .line 408
    invoke-direct {p0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientRequested(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;Lio/grpc/Status;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;
    .param p1, "x1"    # Lio/grpc/Status;

    .line 408
    invoke-direct {p0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientCancelled(Lio/grpc/Status;)V

    return-void
.end method

.method static synthetic access$2600(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;Lio/grpc/internal/ClientStreamListener;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;
    .param p1, "x1"    # Lio/grpc/internal/ClientStreamListener;

    .line 408
    invoke-direct {p0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->setListener(Lio/grpc/internal/ClientStreamListener;)V

    return-void
.end method

.method private clientCancelled(Lio/grpc/Status;)V
    .locals 0
    .param p1, "status"    # Lio/grpc/Status;

    .line 485
    invoke-direct {p0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->internalCancel(Lio/grpc/Status;)Z

    .line 486
    return-void
.end method

.method private declared-synchronized clientRequested(I)Z
    .locals 7
    .param p1, "numMessages"    # I

    monitor-enter p0

    .line 460
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 461
    monitor-exit p0

    return v1

    .line 463
    :cond_0
    :try_start_1
    iget v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientRequested:I

    const/4 v2, 0x1

    if-lez v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 464
    .local v3, "previouslyReady":Z
    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientRequested:I

    .line 465
    :goto_1
    iget v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientRequested:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientReceiveQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 466
    iget v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientRequested:I

    sub-int/2addr v0, v2

    iput v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientRequested:I

    .line 467
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientStreamListener:Lio/grpc/internal/ClientStreamListener;

    iget-object v4, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientReceiveQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/internal/StreamListener$MessageProducer;

    invoke-interface {v0, v4}, Lio/grpc/internal/ClientStreamListener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V

    goto :goto_1

    .line 470
    .end local p0    # "this":Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;
    :cond_2
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 471
    monitor-exit p0

    return v1

    .line 473
    :cond_3
    :try_start_2
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientReceiveQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientNotifyStatus:Lio/grpc/Status;

    if-eqz v0, :cond_4

    .line 474
    iput-boolean v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->closed:Z

    .line 475
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget-object v4, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientNotifyTrailers:Lio/grpc/Metadata;

    invoke-virtual {v0, v4}, Lio/grpc/internal/StatsTraceContext;->clientInboundTrailers(Lio/grpc/Metadata;)V

    .line 476
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget-object v4, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientNotifyStatus:Lio/grpc/Status;

    invoke-virtual {v0, v4}, Lio/grpc/internal/StatsTraceContext;->streamClosed(Lio/grpc/Status;)V

    .line 477
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientStreamListener:Lio/grpc/internal/ClientStreamListener;

    iget-object v4, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientNotifyStatus:Lio/grpc/Status;

    sget-object v5, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    iget-object v6, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientNotifyTrailers:Lio/grpc/Metadata;

    invoke-interface {v0, v4, v5, v6}, Lio/grpc/internal/ClientStreamListener;->closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    .line 480
    :cond_4
    iget v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientRequested:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 481
    .local v0, "nowReady":Z
    :goto_2
    if-nez v3, :cond_6

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    monitor-exit p0

    return v1

    .line 459
    .end local v0    # "nowReady":Z
    .end local v3    # "previouslyReady":Z
    .end local p1    # "numMessages":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized internalCancel(Lio/grpc/Status;)Z
    .locals 7
    .param p1, "clientStatus"    # Lio/grpc/Status;

    monitor-enter p0

    .line 608
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 609
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 611
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->closed:Z

    .line 613
    :goto_0
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientReceiveQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/StreamListener$MessageProducer;

    move-object v2, v1

    .local v2, "producer":Lio/grpc/internal/StreamListener$MessageProducer;
    if-eqz v1, :cond_2

    .line 615
    :goto_1
    invoke-interface {v2}, Lio/grpc/internal/StreamListener$MessageProducer;->next()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v1

    .local v3, "message":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 617
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 620
    :goto_2
    goto :goto_1

    .line 618
    :catchall_0
    move-exception v1

    .line 619
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {}, Lio/grpc/inprocess/InProcessTransport;->access$2100()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "Exception closing stream"

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "t":Ljava/lang/Throwable;
    goto :goto_2

    .line 622
    .end local v3    # "message":Ljava/io/InputStream;
    .end local p0    # "this":Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;
    :cond_1
    goto :goto_0

    .line 623
    :cond_2
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v1

    iget-object v1, v1, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    invoke-virtual {v1, p1}, Lio/grpc/internal/StatsTraceContext;->streamClosed(Lio/grpc/Status;)V

    .line 624
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientStreamListener:Lio/grpc/internal/ClientStreamListener;

    sget-object v3, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v4, Lio/grpc/Metadata;

    invoke-direct {v4}, Lio/grpc/Metadata;-><init>()V

    invoke-interface {v1, p1, v3, v4}, Lio/grpc/internal/ClientStreamListener;->closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 625
    monitor-exit p0

    return v0

    .line 607
    .end local v2    # "producer":Lio/grpc/internal/StreamListener$MessageProducer;
    .end local p1    # "clientStatus":Lio/grpc/Status;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private notifyClientClose(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 3
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "trailers"    # Lio/grpc/Metadata;

    .line 579
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport;->access$1800(Lio/grpc/inprocess/InProcessTransport;)Z

    move-result v0

    invoke-static {p1, v0}, Lio/grpc/inprocess/InProcessTransport;->access$1900(Lio/grpc/Status;Z)Lio/grpc/Status;

    move-result-object v0

    .line 580
    .local v0, "clientStatus":Lio/grpc/Status;
    monitor-enter p0

    .line 581
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->closed:Z

    if-eqz v1, :cond_0

    .line 582
    monitor-exit p0

    return-void

    .line 584
    :cond_0
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientReceiveQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->closed:Z

    .line 586
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v1

    iget-object v1, v1, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    invoke-virtual {v1, p2}, Lio/grpc/internal/StatsTraceContext;->clientInboundTrailers(Lio/grpc/Metadata;)V

    .line 587
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v1

    iget-object v1, v1, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    invoke-virtual {v1, v0}, Lio/grpc/internal/StatsTraceContext;->streamClosed(Lio/grpc/Status;)V

    .line 588
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientStreamListener:Lio/grpc/internal/ClientStreamListener;

    sget-object v2, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-interface {v1, v0, v2, p2}, Lio/grpc/internal/ClientStreamListener;->closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    goto :goto_0

    .line 590
    :cond_1
    iput-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientNotifyStatus:Lio/grpc/Status;

    .line 591
    iput-object p2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientNotifyTrailers:Lio/grpc/Metadata;

    .line 593
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2000(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)V

    .line 596
    return-void

    .line 593
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private declared-synchronized setListener(Lio/grpc/internal/ClientStreamListener;)V
    .locals 0
    .param p1, "listener"    # Lio/grpc/internal/ClientStreamListener;

    monitor-enter p0

    .line 433
    :try_start_0
    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientStreamListener:Lio/grpc/internal/ClientStreamListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    monitor-exit p0

    return-void

    .line 432
    .end local p0    # "this":Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;
    .end local p1    # "listener":Lio/grpc/internal/ClientStreamListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public cancel(Lio/grpc/Status;)V
    .locals 2
    .param p1, "status"    # Lio/grpc/Status;

    .line 600
    sget-object v0, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    const-string v1, "server cancelled stream"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->internalCancel(Lio/grpc/Status;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v0

    invoke-static {v0, p1, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->access$1700(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;Lio/grpc/Status;Lio/grpc/Status;)V

    .line 604
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2000(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)V

    .line 605
    return-void
.end method

.method public close(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 6
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "trailers"    # Lio/grpc/Metadata;

    .line 553
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v0

    sget-object v1, Lio/grpc/Status;->OK:Lio/grpc/Status;

    invoke-static {v0, v1, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->access$1700(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;Lio/grpc/Status;Lio/grpc/Status;)V

    .line 555
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport;->access$1500(Lio/grpc/inprocess/InProcessTransport;)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 556
    invoke-virtual {p1}, Lio/grpc/Status;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lio/grpc/Status;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 558
    .local v0, "statusSize":I
    :goto_0
    invoke-static {p2}, Lio/grpc/inprocess/InProcessTransport;->access$1600(Lio/grpc/Metadata;)I

    move-result v2

    add-int/2addr v2, v0

    .line 559
    .local v2, "metadataSize":I
    iget-object v3, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v3, v3, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v3}, Lio/grpc/inprocess/InProcessTransport;->access$1500(Lio/grpc/inprocess/InProcessTransport;)I

    move-result v3

    if-le v2, v3, :cond_1

    .line 565
    sget-object v3, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v5, v5, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    .line 568
    invoke-static {v5}, Lio/grpc/inprocess/InProcessTransport;->access$1500(Lio/grpc/inprocess/InProcessTransport;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    .line 569
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 566
    const-string v1, "Response header metadata larger than %d: %d"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 565
    invoke-virtual {v3, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 570
    new-instance v1, Lio/grpc/Metadata;

    invoke-direct {v1}, Lio/grpc/Metadata;-><init>()V

    move-object p2, v1

    .line 574
    .end local v0    # "statusSize":I
    .end local v2    # "metadataSize":I
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->notifyClientClose(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 575
    return-void
.end method

.method public flush()V
    .locals 0

    .line 508
    return-void
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 643
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport;->access$400(Lio/grpc/inprocess/InProcessTransport;)Lio/grpc/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 648
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2200(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isReady()Z
    .locals 2

    monitor-enter p0

    .line 512
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 513
    monitor-exit p0

    return v1

    .line 515
    :cond_0
    :try_start_1
    iget v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientRequested:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    .line 511
    .end local p0    # "this":Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public optimizeForDirectExecutor()V
    .locals 0

    .line 634
    return-void
.end method

.method public request(I)V
    .locals 2
    .param p1, "numMessages"    # I

    .line 443
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->access$1300(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;I)Z

    move-result v0

    .line 444
    .local v0, "onReady":Z
    if-eqz v0, :cond_1

    .line 445
    monitor-enter p0

    .line 446
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->closed:Z

    if-nez v1, :cond_0

    .line 447
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientStreamListener:Lio/grpc/internal/ClientStreamListener;

    invoke-interface {v1}, Lio/grpc/internal/ClientStreamListener;->onReady()V

    .line 449
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 451
    :cond_1
    :goto_0
    return-void
.end method

.method public setCompressor(Lio/grpc/Compressor;)V
    .locals 0
    .param p1, "compressor"    # Lio/grpc/Compressor;

    .line 637
    return-void
.end method

.method public setDecompressor(Lio/grpc/Decompressor;)V
    .locals 0
    .param p1, "decompressor"    # Lio/grpc/Decompressor;

    .line 640
    return-void
.end method

.method public setListener(Lio/grpc/internal/ServerStreamListener;)V
    .locals 1
    .param p1, "serverStreamListener"    # Lio/grpc/internal/ServerStreamListener;

    .line 438
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->access$1200(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;Lio/grpc/internal/ServerStreamListener;)V

    .line 439
    return-void
.end method

.method public setMessageCompression(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 631
    return-void
.end method

.method public statsTraceContext()Lio/grpc/internal/StatsTraceContext;
    .locals 1

    .line 653
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    return-object v0
.end method

.method public streamId()I
    .locals 1

    .line 658
    const/4 v0, -0x1

    return v0
.end method

.method public writeHeaders(Lio/grpc/Metadata;)V
    .locals 7
    .param p1, "headers"    # Lio/grpc/Metadata;

    .line 520
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport;->access$1500(Lio/grpc/inprocess/InProcessTransport;)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 521
    invoke-static {p1}, Lio/grpc/inprocess/InProcessTransport;->access$1600(Lio/grpc/Metadata;)I

    move-result v0

    .line 522
    .local v0, "metadataSize":I
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v1, v1, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v1}, Lio/grpc/inprocess/InProcessTransport;->access$1500(Lio/grpc/inprocess/InProcessTransport;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 523
    sget-object v1, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    const-string v2, "Client cancelled the RPC"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 524
    .local v1, "serverStatus":Lio/grpc/Status;
    iget-object v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v2}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v2

    invoke-static {v2, v1, v1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->access$1700(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;Lio/grpc/Status;Lio/grpc/Status;)V

    .line 527
    sget-object v2, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    const-string v3, "Response header metadata larger than %d: %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v6, v6, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    .line 530
    invoke-static {v6}, Lio/grpc/inprocess/InProcessTransport;->access$1500(Lio/grpc/inprocess/InProcessTransport;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 531
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 528
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 527
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 532
    .local v2, "failedStatus":Lio/grpc/Status;
    new-instance v3, Lio/grpc/Metadata;

    invoke-direct {v3}, Lio/grpc/Metadata;-><init>()V

    invoke-direct {p0, v2, v3}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->notifyClientClose(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 533
    return-void

    .line 537
    .end local v0    # "metadataSize":I
    .end local v1    # "serverStatus":Lio/grpc/Status;
    .end local v2    # "failedStatus":Lio/grpc/Status;
    :cond_0
    monitor-enter p0

    .line 538
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->closed:Z

    if-eqz v0, :cond_1

    .line 539
    monitor-exit p0

    return-void

    .line 542
    :cond_1
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    invoke-virtual {v0}, Lio/grpc/internal/StatsTraceContext;->clientInboundHeaders()V

    .line 543
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientStreamListener:Lio/grpc/internal/ClientStreamListener;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStreamListener;->headersRead(Lio/grpc/Metadata;)V

    .line 544
    monitor-exit p0

    .line 545
    return-void

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized writeMessage(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "message"    # Ljava/io/InputStream;

    monitor-enter p0

    .line 490
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 491
    monitor-exit p0

    return-void

    .line 493
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->outboundSeqNo:I

    invoke-virtual {v0, v1}, Lio/grpc/internal/StatsTraceContext;->outboundMessage(I)V

    .line 494
    iget-object v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget v3, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->outboundSeqNo:I

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    invoke-virtual/range {v2 .. v7}, Lio/grpc/internal/StatsTraceContext;->outboundMessageSent(IJJ)V

    .line 495
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->outboundSeqNo:I

    invoke-virtual {v0, v1}, Lio/grpc/internal/StatsTraceContext;->inboundMessage(I)V

    .line 496
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v0

    iget-object v1, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->outboundSeqNo:I

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    invoke-virtual/range {v1 .. v6}, Lio/grpc/internal/StatsTraceContext;->inboundMessageRead(IJJ)V

    .line 497
    iget v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->outboundSeqNo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->outboundSeqNo:I

    .line 498
    new-instance v0, Lio/grpc/inprocess/InProcessTransport$SingleMessageProducer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/inprocess/InProcessTransport$SingleMessageProducer;-><init>(Ljava/io/InputStream;Lio/grpc/inprocess/InProcessTransport$1;)V

    .line 499
    .local v0, "producer":Lio/grpc/internal/StreamListener$MessageProducer;
    iget v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientRequested:I

    if-lez v1, :cond_1

    .line 500
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientRequested:I

    .line 501
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientStreamListener:Lio/grpc/internal/ClientStreamListener;

    invoke-interface {v1, v0}, Lio/grpc/internal/ClientStreamListener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V

    goto :goto_0

    .line 503
    .end local p0    # "this":Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;
    :cond_1
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientReceiveQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    :goto_0
    monitor-exit p0

    return-void

    .line 489
    .end local v0    # "producer":Lio/grpc/internal/StreamListener$MessageProducer;
    .end local p1    # "message":Ljava/io/InputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
