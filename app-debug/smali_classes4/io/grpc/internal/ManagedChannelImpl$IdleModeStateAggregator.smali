.class final Lio/grpc/internal/ManagedChannelImpl$IdleModeStateAggregator;
.super Lio/grpc/internal/InUseStateAggregator;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IdleModeStateAggregator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/internal/InUseStateAggregator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ManagedChannelImpl;


# direct methods
.method private constructor <init>(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0

    .line 2197
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$IdleModeStateAggregator;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-direct {p0}, Lio/grpc/internal/InUseStateAggregator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p2, "x1"    # Lio/grpc/internal/ManagedChannelImpl$1;

    .line 2197
    invoke-direct {p0, p1}, Lio/grpc/internal/ManagedChannelImpl$IdleModeStateAggregator;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    return-void
.end method


# virtual methods
.method protected handleInUse()V
    .locals 1

    .line 2200
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$IdleModeStateAggregator;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-virtual {v0}, Lio/grpc/internal/ManagedChannelImpl;->exitIdleMode()V

    .line 2201
    return-void
.end method

.method protected handleNotInUse()V
    .locals 1

    .line 2205
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$IdleModeStateAggregator;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$1500(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2206
    return-void

    .line 2208
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$IdleModeStateAggregator;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$8200(Lio/grpc/internal/ManagedChannelImpl;)V

    .line 2209
    return-void
.end method
