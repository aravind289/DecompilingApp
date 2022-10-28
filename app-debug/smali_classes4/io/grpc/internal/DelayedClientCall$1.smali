.class Lio/grpc/internal/DelayedClientCall$1;
.super Ljava/lang/Object;
.source "DelayedClientCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedClientCall;->setCall(Lio/grpc/ClientCall;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/DelayedClientCall;


# direct methods
.method constructor <init>(Lio/grpc/internal/DelayedClientCall;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/DelayedClientCall;

    .line 152
    .local p0, "this":Lio/grpc/internal/DelayedClientCall$1;, "Lio/grpc/internal/DelayedClientCall$1;"
    iput-object p1, p0, Lio/grpc/internal/DelayedClientCall$1;->this$0:Lio/grpc/internal/DelayedClientCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 155
    .local p0, "this":Lio/grpc/internal/DelayedClientCall$1;, "Lio/grpc/internal/DelayedClientCall$1;"
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall$1;->this$0:Lio/grpc/internal/DelayedClientCall;

    invoke-static {v0}, Lio/grpc/internal/DelayedClientCall;->access$100(Lio/grpc/internal/DelayedClientCall;)V

    .line 156
    return-void
.end method
