.class Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable$1;
.super Ljava/lang/Object;
.source "RetriableStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable;


# direct methods
.method constructor <init>(Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable;)V
    .locals 0
    .param p1, "this$2"    # Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable;

    .line 955
    .local p0, "this":Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable$1;, "Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable$1;"
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable$1;->this$2:Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 959
    .local p0, "this":Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable$1;, "Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable$1;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable$1;->this$2:Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable;

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable;->this$1:Lio/grpc/internal/RetriableStream$Sublistener;

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable$1;->this$2:Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable;

    iget-object v1, v1, Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable;->this$1:Lio/grpc/internal/RetriableStream$Sublistener;

    iget-object v1, v1, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    iget v1, v1, Lio/grpc/internal/RetriableStream$Substream;->previousAttemptCount:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/grpc/internal/RetriableStream;->access$400(Lio/grpc/internal/RetriableStream;IZ)Lio/grpc/internal/RetriableStream$Substream;

    move-result-object v0

    .line 962
    .local v0, "newSubstream":Lio/grpc/internal/RetriableStream$Substream;
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable$1;->this$2:Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable;

    iget-object v1, v1, Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable;->this$1:Lio/grpc/internal/RetriableStream$Sublistener;

    iget-object v1, v1, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1, v0}, Lio/grpc/internal/RetriableStream;->access$1100(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V

    .line 963
    return-void
.end method
