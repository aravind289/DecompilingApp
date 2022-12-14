.class Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;
.super Ljava/lang/Object;
.source "InProcessTransport.java"

# interfaces
.implements Lio/grpc/internal/ClientStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/inprocess/InProcessTransport$InProcessStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InProcessClientStream"
.end annotation


# instance fields
.field final callOptions:Lio/grpc/CallOptions;

.field private closed:Z

.field private outboundSeqNo:I

.field private serverNotifyHalfClose:Z

.field private serverReceiveQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/grpc/internal/StreamListener$MessageProducer;",
            ">;"
        }
    .end annotation
.end field

.field private serverRequested:I

.field private serverStreamListener:Lio/grpc/internal/ServerStreamListener;

.field final statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

.field final synthetic this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;


# direct methods
.method constructor <init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream;Lio/grpc/CallOptions;Lio/grpc/internal/StatsTraceContext;)V
    .locals 0
    .param p2, "callOptions"    # Lio/grpc/CallOptions;
    .param p3, "statsTraceContext"    # Lio/grpc/internal/StatsTraceContext;

    .line 681
    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverReceiveQueue:Ljava/util/ArrayDeque;

    .line 682
    iput-object p2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->callOptions:Lio/grpc/CallOptions;

    .line 683
    iput-object p3, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    .line 684
    return-void
.end method

.method static synthetic access$1200(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;Lio/grpc/internal/ServerStreamListener;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;
    .param p1, "x1"    # Lio/grpc/internal/ServerStreamListener;

    .line 662
    invoke-direct {p0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->setListener(Lio/grpc/internal/ServerStreamListener;)V

    return-void
.end method

.method static synthetic access$1300(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;I)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;
    .param p1, "x1"    # I

    .line 662
    invoke-direct {p0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverRequested(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;Lio/grpc/Status;Lio/grpc/Status;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;
    .param p1, "x1"    # Lio/grpc/Status;
    .param p2, "x2"    # Lio/grpc/Status;

    .line 662
    invoke-direct {p0, p1, p2}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverClosed(Lio/grpc/Status;Lio/grpc/Status;)V

    return-void
.end method

.method private declared-synchronized internalCancel(Lio/grpc/Status;Lio/grpc/Status;)Z
    .locals 7
    .param p1, "serverListenerStatus"    # Lio/grpc/Status;
    .param p2, "serverTracerStatus"    # Lio/grpc/Status;

    monitor-enter p0

    .line 773
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 774
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 776
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->closed:Z

    .line 779
    :goto_0
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverReceiveQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/StreamListener$MessageProducer;

    move-object v2, v1

    .local v2, "producer":Lio/grpc/internal/StreamListener$MessageProducer;
    if-eqz v1, :cond_2

    .line 781
    :goto_1
    invoke-interface {v2}, Lio/grpc/internal/StreamListener$MessageProducer;->next()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v1

    .local v3, "message":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 783
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 786
    :goto_2
    goto :goto_1

    .line 784
    :catchall_0
    move-exception v1

    .line 785
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {}, Lio/grpc/inprocess/InProcessTransport;->access$2100()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "Exception closing stream"

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "t":Ljava/lang/Throwable;
    goto :goto_2

    .line 788
    .end local v3    # "message":Ljava/io/InputStream;
    .end local p0    # "this":Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;
    :cond_1
    goto :goto_0

    .line 789
    :cond_2
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2300(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    move-result-object v1

    iget-object v1, v1, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    invoke-virtual {v1, p2}, Lio/grpc/internal/StatsTraceContext;->streamClosed(Lio/grpc/Status;)V

    .line 790
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverStreamListener:Lio/grpc/internal/ServerStreamListener;

    invoke-interface {v1, p1}, Lio/grpc/internal/ServerStreamListener;->closed(Lio/grpc/Status;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 791
    monitor-exit p0

    return v0

    .line 772
    .end local v2    # "producer":Lio/grpc/internal/StreamListener$MessageProducer;
    .end local p1    # "serverListenerStatus":Lio/grpc/Status;
    .end local p2    # "serverTracerStatus":Lio/grpc/Status;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private serverClosed(Lio/grpc/Status;Lio/grpc/Status;)V
    .locals 0
    .param p1, "serverListenerStatus"    # Lio/grpc/Status;
    .param p2, "serverTracerStatus"    # Lio/grpc/Status;

    .line 727
    invoke-direct {p0, p1, p2}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->internalCancel(Lio/grpc/Status;Lio/grpc/Status;)Z

    .line 728
    return-void
.end method

.method private declared-synchronized serverRequested(I)Z
    .locals 5
    .param p1, "numMessages"    # I

    monitor-enter p0

    .line 709
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 710
    monitor-exit p0

    return v1

    .line 712
    :cond_0
    :try_start_1
    iget v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverRequested:I

    const/4 v2, 0x1

    if-lez v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 713
    .local v3, "previouslyReady":Z
    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverRequested:I

    .line 714
    :goto_1
    iget v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverRequested:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverReceiveQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 715
    iget v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverRequested:I

    sub-int/2addr v0, v2

    iput v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverRequested:I

    .line 716
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverStreamListener:Lio/grpc/internal/ServerStreamListener;

    iget-object v4, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverReceiveQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/internal/StreamListener$MessageProducer;

    invoke-interface {v0, v4}, Lio/grpc/internal/ServerStreamListener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V

    goto :goto_1

    .line 718
    .end local p0    # "this":Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;
    :cond_2
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverReceiveQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverNotifyHalfClose:Z

    if-eqz v0, :cond_3

    .line 719
    iput-boolean v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverNotifyHalfClose:Z

    .line 720
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverStreamListener:Lio/grpc/internal/ServerStreamListener;

    invoke-interface {v0}, Lio/grpc/internal/ServerStreamListener;->halfClosed()V

    .line 722
    :cond_3
    iget v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverRequested:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 723
    .local v0, "nowReady":Z
    :goto_2
    if-nez v3, :cond_5

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    monitor-exit p0

    return v1

    .line 708
    .end local v0    # "nowReady":Z
    .end local v3    # "previouslyReady":Z
    .end local p1    # "numMessages":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setListener(Lio/grpc/internal/ServerStreamListener;)V
    .locals 0
    .param p1, "listener"    # Lio/grpc/internal/ServerStreamListener;

    monitor-enter p0

    .line 687
    :try_start_0
    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverStreamListener:Lio/grpc/internal/ServerStreamListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    monitor-exit p0

    return-void

    .line 686
    .end local p0    # "this":Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;
    .end local p1    # "listener":Lio/grpc/internal/ServerStreamListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V
    .locals 0
    .param p1, "insight"    # Lio/grpc/internal/InsightBuilder;

    .line 860
    return-void
.end method

.method public cancel(Lio/grpc/Status;)V
    .locals 2
    .param p1, "reason"    # Lio/grpc/Status;

    .line 763
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport;->access$1800(Lio/grpc/inprocess/InProcessTransport;)Z

    move-result v0

    invoke-static {p1, v0}, Lio/grpc/inprocess/InProcessTransport;->access$1900(Lio/grpc/Status;Z)Lio/grpc/Status;

    move-result-object v0

    .line 764
    .local v0, "serverStatus":Lio/grpc/Status;
    invoke-direct {p0, v0, v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->internalCancel(Lio/grpc/Status;Lio/grpc/Status;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 765
    return-void

    .line 767
    :cond_0
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2300(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    move-result-object v1

    invoke-static {v1, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->access$2500(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;Lio/grpc/Status;)V

    .line 768
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2000(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)V

    .line 769
    return-void
.end method

.method public flush()V
    .locals 0

    .line 750
    return-void
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 830
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport;->access$2900(Lio/grpc/inprocess/InProcessTransport;)Lio/grpc/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized halfClose()V
    .locals 1

    monitor-enter p0

    .line 796
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 797
    monitor-exit p0

    return-void

    .line 799
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverReceiveQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverStreamListener:Lio/grpc/internal/ServerStreamListener;

    invoke-interface {v0}, Lio/grpc/internal/ServerStreamListener;->halfClosed()V

    goto :goto_0

    .line 802
    .end local p0    # "this":Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverNotifyHalfClose:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 804
    :goto_0
    monitor-exit p0

    return-void

    .line 795
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isReady()Z
    .locals 2

    monitor-enter p0

    .line 754
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 755
    monitor-exit p0

    return v1

    .line 757
    :cond_0
    :try_start_1
    iget v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverRequested:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    .line 753
    .end local p0    # "this":Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public optimizeForDirectExecutor()V
    .locals 0

    .line 834
    return-void
.end method

.method public request(I)V
    .locals 2
    .param p1, "numMessages"    # I

    .line 692
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2300(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->access$2400(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;I)Z

    move-result v0

    .line 693
    .local v0, "onReady":Z
    if-eqz v0, :cond_1

    .line 694
    monitor-enter p0

    .line 695
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->closed:Z

    if-nez v1, :cond_0

    .line 696
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverStreamListener:Lio/grpc/internal/ServerStreamListener;

    invoke-interface {v1}, Lio/grpc/internal/ServerStreamListener;->onReady()V

    .line 698
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 700
    :cond_1
    :goto_0
    return-void
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 811
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2202(Lio/grpc/inprocess/InProcessTransport$InProcessStream;Ljava/lang/String;)Ljava/lang/String;

    .line 812
    return-void
.end method

.method public setCompressor(Lio/grpc/Compressor;)V
    .locals 0
    .param p1, "compressor"    # Lio/grpc/Compressor;

    .line 837
    return-void
.end method

.method public setDeadline(Lio/grpc/Deadline;)V
    .locals 5
    .param p1, "deadline"    # Lio/grpc/Deadline;

    .line 853
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2800(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/Metadata;

    move-result-object v0

    sget-object v1, Lio/grpc/internal/GrpcUtil;->TIMEOUT_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {v0, v1}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 854
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 855
    .local v0, "effectiveTimeout":J
    iget-object v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v2}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2800(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/Metadata;

    move-result-object v2

    sget-object v3, Lio/grpc/internal/GrpcUtil;->TIMEOUT_KEY:Lio/grpc/Metadata$Key;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 856
    return-void
.end method

.method public setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)V
    .locals 0
    .param p1, "decompressorRegistry"    # Lio/grpc/DecompressorRegistry;

    .line 843
    return-void
.end method

.method public setFullStreamDecompression(Z)V
    .locals 0
    .param p1, "fullStreamDecompression"    # Z

    .line 840
    return-void
.end method

.method public setMaxInboundMessageSize(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .line 846
    return-void
.end method

.method public setMaxOutboundMessageSize(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .line 849
    return-void
.end method

.method public setMessageCompression(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 807
    return-void
.end method

.method public start(Lio/grpc/internal/ClientStreamListener;)V
    .locals 5
    .param p1, "listener"    # Lio/grpc/internal/ClientStreamListener;

    .line 816
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2300(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->access$2600(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;Lio/grpc/internal/ClientStreamListener;)V

    .line 818
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    monitor-enter v0

    .line 819
    :try_start_0
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    invoke-virtual {v1}, Lio/grpc/internal/StatsTraceContext;->clientOutboundHeaders()V

    .line 820
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v1, v1, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v1}, Lio/grpc/inprocess/InProcessTransport;->access$800(Lio/grpc/inprocess/InProcessTransport;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 821
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->callOptions:Lio/grpc/CallOptions;

    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->shouldBeCountedForInUse(Lio/grpc/CallOptions;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 822
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v1, v1, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v1}, Lio/grpc/inprocess/InProcessTransport;->access$900(Lio/grpc/inprocess/InProcessTransport;)Lio/grpc/internal/InUseStateAggregator;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lio/grpc/internal/InUseStateAggregator;->updateObjectInUse(Ljava/lang/Object;Z)V

    .line 824
    :cond_0
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v1, v1, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v1}, Lio/grpc/inprocess/InProcessTransport;->access$500(Lio/grpc/inprocess/InProcessTransport;)Lio/grpc/internal/ServerTransportListener;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v2}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2300(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v3}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v4}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2800(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/Metadata;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lio/grpc/internal/ServerTransportListener;->streamCreated(Lio/grpc/internal/ServerStream;Ljava/lang/String;Lio/grpc/Metadata;)V

    .line 825
    monitor-exit v0

    .line 826
    return-void

    .line 825
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized writeMessage(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "message"    # Ljava/io/InputStream;

    monitor-enter p0

    .line 732
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 733
    monitor-exit p0

    return-void

    .line 735
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->outboundSeqNo:I

    invoke-virtual {v0, v1}, Lio/grpc/internal/StatsTraceContext;->outboundMessage(I)V

    .line 736
    iget-object v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget v3, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->outboundSeqNo:I

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    invoke-virtual/range {v2 .. v7}, Lio/grpc/internal/StatsTraceContext;->outboundMessageSent(IJJ)V

    .line 737
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2300(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->outboundSeqNo:I

    invoke-virtual {v0, v1}, Lio/grpc/internal/StatsTraceContext;->inboundMessage(I)V

    .line 738
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2300(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    move-result-object v0

    iget-object v1, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->outboundSeqNo:I

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    invoke-virtual/range {v1 .. v6}, Lio/grpc/internal/StatsTraceContext;->inboundMessageRead(IJJ)V

    .line 739
    iget v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->outboundSeqNo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->outboundSeqNo:I

    .line 740
    new-instance v0, Lio/grpc/inprocess/InProcessTransport$SingleMessageProducer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/inprocess/InProcessTransport$SingleMessageProducer;-><init>(Ljava/io/InputStream;Lio/grpc/inprocess/InProcessTransport$1;)V

    .line 741
    .local v0, "producer":Lio/grpc/internal/StreamListener$MessageProducer;
    iget v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverRequested:I

    if-lez v1, :cond_1

    .line 742
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverRequested:I

    .line 743
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverStreamListener:Lio/grpc/internal/ServerStreamListener;

    invoke-interface {v1, v0}, Lio/grpc/internal/ServerStreamListener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V

    goto :goto_0

    .line 745
    .end local p0    # "this":Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;
    :cond_1
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverReceiveQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    :goto_0
    monitor-exit p0

    return-void

    .line 731
    .end local v0    # "producer":Lio/grpc/internal/StreamListener$MessageProducer;
    .end local p1    # "message":Ljava/io/InputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
