.class Lio/grpc/internal/RetriableStream$1RequestEntry;
.super Ljava/lang/Object;
.source "RetriableStream.java"

# interfaces
.implements Lio/grpc/internal/RetriableStream$BufferEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/RetriableStream;->request(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestEntry"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/RetriableStream;

.field final synthetic val$numMessages:I


# direct methods
.method constructor <init>(Lio/grpc/internal/RetriableStream;I)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/RetriableStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 571
    .local p0, "this":Lio/grpc/internal/RetriableStream$1RequestEntry;, "Lio/grpc/internal/RetriableStream$1RequestEntry;"
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$1RequestEntry;->this$0:Lio/grpc/internal/RetriableStream;

    iput p2, p0, Lio/grpc/internal/RetriableStream$1RequestEntry;->val$numMessages:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runWith(Lio/grpc/internal/RetriableStream$Substream;)V
    .locals 2
    .param p1, "substream"    # Lio/grpc/internal/RetriableStream$Substream;

    .line 574
    .local p0, "this":Lio/grpc/internal/RetriableStream$1RequestEntry;, "Lio/grpc/internal/RetriableStream$1RequestEntry;"
    iget-object v0, p1, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    iget v1, p0, Lio/grpc/internal/RetriableStream$1RequestEntry;->val$numMessages:I

    invoke-interface {v0, v1}, Lio/grpc/internal/ClientStream;->request(I)V

    .line 575
    return-void
.end method
