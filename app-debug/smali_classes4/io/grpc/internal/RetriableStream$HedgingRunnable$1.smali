.class Lio/grpc/internal/RetriableStream$HedgingRunnable$1;
.super Ljava/lang/Object;
.source "RetriableStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/RetriableStream$HedgingRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;


# direct methods
.method constructor <init>(Lio/grpc/internal/RetriableStream$HedgingRunnable;)V
    .locals 0
    .param p1, "this$1"    # Lio/grpc/internal/RetriableStream$HedgingRunnable;

    .line 438
    .local p0, "this":Lio/grpc/internal/RetriableStream$HedgingRunnable$1;, "Lio/grpc/internal/RetriableStream$HedgingRunnable$1;"
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 446
    .local p0, "this":Lio/grpc/internal/RetriableStream$HedgingRunnable$1;, "Lio/grpc/internal/RetriableStream$HedgingRunnable$1;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v1, v1, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v1

    iget v1, v1, Lio/grpc/internal/RetriableStream$State;->hedgingAttemptCount:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/grpc/internal/RetriableStream;->access$400(Lio/grpc/internal/RetriableStream;IZ)Lio/grpc/internal/RetriableStream$Substream;

    move-result-object v0

    .line 447
    .local v0, "newSubstream":Lio/grpc/internal/RetriableStream$Substream;
    const/4 v1, 0x0

    .line 448
    .local v1, "cancelled":Z
    const/4 v2, 0x0

    .line 450
    .local v2, "future":Lio/grpc/internal/RetriableStream$FutureCanceller;
    iget-object v3, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v3, v3, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v3}, Lio/grpc/internal/RetriableStream;->access$500(Lio/grpc/internal/RetriableStream;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 454
    :try_start_0
    iget-object v4, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v4, v4, Lio/grpc/internal/RetriableStream$HedgingRunnable;->scheduledHedgingRef:Lio/grpc/internal/RetriableStream$FutureCanceller;

    invoke-virtual {v4}, Lio/grpc/internal/RetriableStream$FutureCanceller;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 455
    const/4 v1, 0x1

    goto :goto_0

    .line 457
    :cond_0
    iget-object v4, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v4, v4, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    iget-object v5, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v5, v5, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v5}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v5

    invoke-virtual {v5, v0}, Lio/grpc/internal/RetriableStream$State;->addActiveHedge(Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v5

    invoke-static {v4, v5}, Lio/grpc/internal/RetriableStream;->access$302(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$State;)Lio/grpc/internal/RetriableStream$State;

    .line 458
    iget-object v4, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v4, v4, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    iget-object v5, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v5, v5, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v5}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v5

    invoke-static {v4, v5}, Lio/grpc/internal/RetriableStream;->access$600(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$State;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v4, v4, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    .line 459
    invoke-static {v4}, Lio/grpc/internal/RetriableStream;->access$700(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$Throttle;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v4, v4, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v4}, Lio/grpc/internal/RetriableStream;->access$700(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$Throttle;

    move-result-object v4

    invoke-virtual {v4}, Lio/grpc/internal/RetriableStream$Throttle;->isAboveThreshold()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 460
    :cond_1
    iget-object v4, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v4, v4, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    new-instance v5, Lio/grpc/internal/RetriableStream$FutureCanceller;

    iget-object v6, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v6, v6, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v6}, Lio/grpc/internal/RetriableStream;->access$500(Lio/grpc/internal/RetriableStream;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v6}, Lio/grpc/internal/RetriableStream$FutureCanceller;-><init>(Ljava/lang/Object;)V

    move-object v2, v5

    invoke-static {v4, v5}, Lio/grpc/internal/RetriableStream;->access$802(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$FutureCanceller;)Lio/grpc/internal/RetriableStream$FutureCanceller;

    goto :goto_0

    .line 462
    :cond_2
    iget-object v4, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v4, v4, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    iget-object v5, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v5, v5, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v5}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v5

    invoke-virtual {v5}, Lio/grpc/internal/RetriableStream$State;->freezeHedging()Lio/grpc/internal/RetriableStream$State;

    move-result-object v5

    invoke-static {v4, v5}, Lio/grpc/internal/RetriableStream;->access$302(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$State;)Lio/grpc/internal/RetriableStream$State;

    .line 463
    iget-object v4, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v4, v4, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lio/grpc/internal/RetriableStream;->access$802(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$FutureCanceller;)Lio/grpc/internal/RetriableStream$FutureCanceller;

    .line 466
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    if-eqz v1, :cond_3

    .line 469
    iget-object v3, v0, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    sget-object v4, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    const-string v5, "Unneeded hedging"

    invoke-virtual {v4, v5}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    .line 470
    return-void

    .line 472
    :cond_3
    if-eqz v2, :cond_4

    .line 473
    iget-object v3, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v3, v3, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    .line 474
    invoke-static {v3}, Lio/grpc/internal/RetriableStream;->access$1000(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    new-instance v4, Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v5, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v5, v5, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-direct {v4, v5, v2}, Lio/grpc/internal/RetriableStream$HedgingRunnable;-><init>(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$FutureCanceller;)V

    iget-object v5, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v5, v5, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    .line 476
    invoke-static {v5}, Lio/grpc/internal/RetriableStream;->access$900(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/HedgingPolicy;

    move-result-object v5

    iget-wide v5, v5, Lio/grpc/internal/HedgingPolicy;->hedgingDelayNanos:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 474
    invoke-interface {v3, v4, v5, v6, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    .line 473
    invoke-virtual {v2, v3}, Lio/grpc/internal/RetriableStream$FutureCanceller;->setFuture(Ljava/util/concurrent/Future;)V

    .line 479
    :cond_4
    iget-object v3, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v3, v3, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v3, v0}, Lio/grpc/internal/RetriableStream;->access$1100(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V

    .line 480
    return-void

    .line 466
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
