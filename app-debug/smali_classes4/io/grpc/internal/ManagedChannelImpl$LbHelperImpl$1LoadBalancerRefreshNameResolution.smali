.class final Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1LoadBalancerRefreshNameResolution;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->refreshNameResolution()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoadBalancerRefreshNameResolution"
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;)V
    .locals 0
    .param p1, "this$1"    # Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    .line 1496
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1LoadBalancerRefreshNameResolution;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1499
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1LoadBalancerRefreshNameResolution;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$5000(Lio/grpc/internal/ManagedChannelImpl;)V

    .line 1500
    return-void
.end method
