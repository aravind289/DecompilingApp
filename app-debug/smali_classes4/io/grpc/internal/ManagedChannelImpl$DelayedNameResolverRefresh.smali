.class Lio/grpc/internal/ManagedChannelImpl$DelayedNameResolverRefresh;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DelayedNameResolverRefresh"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ManagedChannelImpl;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 455
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$DelayedNameResolverRefresh;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 458
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$DelayedNameResolverRefresh;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/grpc/internal/ManagedChannelImpl;->access$1202(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/SynchronizationContext$ScheduledHandle;)Lio/grpc/SynchronizationContext$ScheduledHandle;

    .line 459
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$DelayedNameResolverRefresh;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$1300(Lio/grpc/internal/ManagedChannelImpl;)V

    .line 460
    return-void
.end method
