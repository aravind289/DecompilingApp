.class final Lio/grpc/internal/ManagedChannelImpl$1ShutdownNow;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl;->shutdownNow()Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ShutdownNow"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ManagedChannelImpl;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 838
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$1ShutdownNow;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 841
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1ShutdownNow;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$3300(Lio/grpc/internal/ManagedChannelImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    return-void

    .line 844
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1ShutdownNow;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/grpc/internal/ManagedChannelImpl;->access$3302(Lio/grpc/internal/ManagedChannelImpl;Z)Z

    .line 845
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1ShutdownNow;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$3400(Lio/grpc/internal/ManagedChannelImpl;)V

    .line 846
    return-void
.end method
