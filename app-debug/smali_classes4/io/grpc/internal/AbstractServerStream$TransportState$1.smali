.class Lio/grpc/internal/AbstractServerStream$TransportState$1;
.super Ljava/lang/Object;
.source "AbstractServerStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/AbstractServerStream$TransportState;->transportReportStatus(Lio/grpc/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/AbstractServerStream$TransportState;

.field final synthetic val$status:Lio/grpc/Status;


# direct methods
.method constructor <init>(Lio/grpc/internal/AbstractServerStream$TransportState;Lio/grpc/Status;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/AbstractServerStream$TransportState;

    .line 279
    iput-object p1, p0, Lio/grpc/internal/AbstractServerStream$TransportState$1;->this$0:Lio/grpc/internal/AbstractServerStream$TransportState;

    iput-object p2, p0, Lio/grpc/internal/AbstractServerStream$TransportState$1;->val$status:Lio/grpc/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 282
    iget-object v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState$1;->this$0:Lio/grpc/internal/AbstractServerStream$TransportState;

    iget-object v1, p0, Lio/grpc/internal/AbstractServerStream$TransportState$1;->val$status:Lio/grpc/Status;

    invoke-static {v0, v1}, Lio/grpc/internal/AbstractServerStream$TransportState;->access$100(Lio/grpc/internal/AbstractServerStream$TransportState;Lio/grpc/Status;)V

    .line 283
    return-void
.end method
