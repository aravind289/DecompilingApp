.class final Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$1ManagedInternalSubchannelCallback;
.super Lio/grpc/internal/InternalSubchannel$Callback;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->start(Lio/grpc/LoadBalancer$SubchannelStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ManagedInternalSubchannelCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

.field final synthetic val$listener:Lio/grpc/LoadBalancer$SubchannelStateListener;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;Lio/grpc/LoadBalancer$SubchannelStateListener;)V
    .locals 0
    .param p1, "this$1"    # Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1968
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$1ManagedInternalSubchannelCallback;->this$1:Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$1ManagedInternalSubchannelCallback;->val$listener:Lio/grpc/LoadBalancer$SubchannelStateListener;

    invoke-direct {p0}, Lio/grpc/internal/InternalSubchannel$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method onInUse(Lio/grpc/internal/InternalSubchannel;)V
    .locals 2
    .param p1, "is"    # Lio/grpc/internal/InternalSubchannel;

    .line 1995
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$1ManagedInternalSubchannelCallback;->this$1:Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lio/grpc/internal/InUseStateAggregator;->updateObjectInUse(Ljava/lang/Object;Z)V

    .line 1996
    return-void
.end method

.method onNotInUse(Lio/grpc/internal/InternalSubchannel;)V
    .locals 2
    .param p1, "is"    # Lio/grpc/internal/InternalSubchannel;

    .line 2000
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$1ManagedInternalSubchannelCallback;->this$1:Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/grpc/internal/InUseStateAggregator;->updateObjectInUse(Ljava/lang/Object;Z)V

    .line 2001
    return-void
.end method

.method onStateChange(Lio/grpc/internal/InternalSubchannel;Lio/grpc/ConnectivityStateInfo;)V
    .locals 4
    .param p1, "is"    # Lio/grpc/internal/InternalSubchannel;
    .param p2, "newState"    # Lio/grpc/ConnectivityStateInfo;

    .line 1979
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$1ManagedInternalSubchannelCallback;->val$listener:Lio/grpc/LoadBalancer$SubchannelStateListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "listener is null"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1980
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$1ManagedInternalSubchannelCallback;->val$listener:Lio/grpc/LoadBalancer$SubchannelStateListener;

    invoke-interface {v0, p2}, Lio/grpc/LoadBalancer$SubchannelStateListener;->onSubchannelState(Lio/grpc/ConnectivityStateInfo;)V

    .line 1981
    invoke-virtual {p2}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v2, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-eq v0, v2, :cond_1

    invoke-virtual {p2}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v2, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v0, v2, :cond_2

    .line 1982
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$1ManagedInternalSubchannelCallback;->this$1:Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->helper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-boolean v0, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->ignoreRefreshNsCheck:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$1ManagedInternalSubchannelCallback;->this$1:Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->helper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-boolean v0, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->nsRefreshedByLb:Z

    if-nez v0, :cond_2

    .line 1983
    sget-object v0, Lio/grpc/internal/ManagedChannelImpl;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "LoadBalancer should call Helper.refreshNameResolution() to refresh name resolution if subchannel state becomes TRANSIENT_FAILURE or IDLE. This will no longer happen automatically in the future releases"

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1987
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$1ManagedInternalSubchannelCallback;->this$1:Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$5000(Lio/grpc/internal/ManagedChannelImpl;)V

    .line 1988
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$1ManagedInternalSubchannelCallback;->this$1:Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->helper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iput-boolean v1, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->nsRefreshedByLb:Z

    .line 1991
    :cond_2
    return-void
.end method

.method onTerminated(Lio/grpc/internal/InternalSubchannel;)V
    .locals 1
    .param p1, "is"    # Lio/grpc/internal/InternalSubchannel;

    .line 1972
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$1ManagedInternalSubchannelCallback;->this$1:Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$700(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1973
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$1ManagedInternalSubchannelCallback;->this$1:Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$5800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/InternalChannelz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/InternalChannelz;->removeSubchannel(Lio/grpc/InternalInstrumented;)V

    .line 1974
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$1ManagedInternalSubchannelCallback;->this$1:Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$5900(Lio/grpc/internal/ManagedChannelImpl;)V

    .line 1975
    return-void
.end method
