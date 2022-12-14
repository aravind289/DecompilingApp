.class public final Lio/grpc/internal/ServerImplBuilder;
.super Lio/grpc/ServerBuilder;
.source "ServerImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ServerImplBuilder$DefaultFallbackRegistry;,
        Lio/grpc/internal/ServerImplBuilder$ClientTransportServersBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ServerBuilder<",
        "Lio/grpc/internal/ServerImplBuilder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

.field private static final DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

.field private static final DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_FALLBACK_REGISTRY:Lio/grpc/HandlerRegistry;

.field private static final DEFAULT_HANDSHAKE_TIMEOUT_MILLIS:J

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field binlog:Lio/grpc/BinaryLog;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field callTracerFactory:Lio/grpc/internal/CallTracer$Factory;

.field channelz:Lio/grpc/InternalChannelz;

.field private final clientTransportServersBuilder:Lio/grpc/internal/ServerImplBuilder$ClientTransportServersBuilder;

.field compressorRegistry:Lio/grpc/CompressorRegistry;

.field decompressorRegistry:Lio/grpc/DecompressorRegistry;

.field executorPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field executorSupplier:Lio/grpc/ServerCallExecutorSupplier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field fallbackRegistry:Lio/grpc/HandlerRegistry;

.field handshakeTimeoutMillis:J

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ServerInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private recordFinishedRpcs:Z

.field private recordRealTimeMetrics:Z

.field private recordStartedRpcs:Z

.field final registryBuilder:Lio/grpc/internal/InternalHandlerRegistry$Builder;

.field private statsEnabled:Z

.field private final streamTracerFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;"
        }
    .end annotation
.end field

.field ticker:Lio/grpc/Deadline$Ticker;

.field private tracingEnabled:Z

.field final transportFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ServerTransportFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    const-class v0, Lio/grpc/internal/ServerImplBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ServerImplBuilder;->log:Ljava/util/logging/Logger;

    .line 67
    sget-object v0, Lio/grpc/internal/GrpcUtil;->SHARED_CHANNEL_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 68
    invoke-static {v0}, Lio/grpc/internal/SharedResourcePool;->forResource(Lio/grpc/internal/SharedResourceHolder$Resource;)Lio/grpc/internal/SharedResourcePool;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    .line 69
    new-instance v0, Lio/grpc/internal/ServerImplBuilder$DefaultFallbackRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/internal/ServerImplBuilder$DefaultFallbackRegistry;-><init>(Lio/grpc/internal/ServerImplBuilder$1;)V

    sput-object v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_FALLBACK_REGISTRY:Lio/grpc/HandlerRegistry;

    .line 71
    invoke-static {}, Lio/grpc/DecompressorRegistry;->getDefaultInstance()Lio/grpc/DecompressorRegistry;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    .line 73
    invoke-static {}, Lio/grpc/CompressorRegistry;->getDefaultInstance()Lio/grpc/CompressorRegistry;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    .line 74
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_HANDSHAKE_TIMEOUT_MILLIS:J

    return-void
.end method

.method public constructor <init>(Lio/grpc/internal/ServerImplBuilder$ClientTransportServersBuilder;)V
    .locals 2
    .param p1, "clientTransportServersBuilder"    # Lio/grpc/internal/ServerImplBuilder$ClientTransportServersBuilder;

    .line 112
    invoke-direct {p0}, Lio/grpc/ServerBuilder;-><init>()V

    .line 77
    new-instance v0, Lio/grpc/internal/InternalHandlerRegistry$Builder;

    invoke-direct {v0}, Lio/grpc/internal/InternalHandlerRegistry$Builder;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->registryBuilder:Lio/grpc/internal/InternalHandlerRegistry$Builder;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->transportFilters:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->interceptors:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->streamTracerFactories:Ljava/util/List;

    .line 83
    sget-object v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_FALLBACK_REGISTRY:Lio/grpc/HandlerRegistry;

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->fallbackRegistry:Lio/grpc/HandlerRegistry;

    .line 84
    sget-object v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    .line 85
    sget-object v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 86
    sget-object v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 87
    sget-wide v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_HANDSHAKE_TIMEOUT_MILLIS:J

    iput-wide v0, p0, Lio/grpc/internal/ServerImplBuilder;->handshakeTimeoutMillis:J

    .line 88
    invoke-static {}, Lio/grpc/Deadline;->getSystemTicker()Lio/grpc/Deadline$Ticker;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->ticker:Lio/grpc/Deadline$Ticker;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/ServerImplBuilder;->statsEnabled:Z

    .line 90
    iput-boolean v0, p0, Lio/grpc/internal/ServerImplBuilder;->recordStartedRpcs:Z

    .line 91
    iput-boolean v0, p0, Lio/grpc/internal/ServerImplBuilder;->recordFinishedRpcs:Z

    .line 92
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/grpc/internal/ServerImplBuilder;->recordRealTimeMetrics:Z

    .line 93
    iput-boolean v0, p0, Lio/grpc/internal/ServerImplBuilder;->tracingEnabled:Z

    .line 95
    invoke-static {}, Lio/grpc/InternalChannelz;->instance()Lio/grpc/InternalChannelz;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->channelz:Lio/grpc/InternalChannelz;

    .line 96
    invoke-static {}, Lio/grpc/internal/CallTracer;->getDefaultFactory()Lio/grpc/internal/CallTracer$Factory;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->callTracerFactory:Lio/grpc/internal/CallTracer$Factory;

    .line 113
    const-string v0, "clientTransportServersBuilder"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ServerImplBuilder$ClientTransportServersBuilder;

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->clientTransportServersBuilder:Lio/grpc/internal/ServerImplBuilder$ClientTransportServersBuilder;

    .line 115
    return-void
.end method

.method public static forPort(I)Lio/grpc/ServerBuilder;
    .locals 2
    .param p0, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/grpc/ServerBuilder<",
            "*>;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ClientTransportServersBuilder is required, use a constructor"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic addService(Lio/grpc/BindableService;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServerImplBuilder;->addService(Lio/grpc/BindableService;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addService(Lio/grpc/ServerServiceDefinition;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServerImplBuilder;->addService(Lio/grpc/ServerServiceDefinition;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addService(Lio/grpc/BindableService;)Lio/grpc/internal/ServerImplBuilder;
    .locals 1
    .param p1, "bindableService"    # Lio/grpc/BindableService;

    .line 142
    const-string v0, "bindableService"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/BindableService;

    invoke-interface {v0}, Lio/grpc/BindableService;->bindService()Lio/grpc/ServerServiceDefinition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/internal/ServerImplBuilder;->addService(Lio/grpc/ServerServiceDefinition;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addService(Lio/grpc/ServerServiceDefinition;)Lio/grpc/internal/ServerImplBuilder;
    .locals 2
    .param p1, "service"    # Lio/grpc/ServerServiceDefinition;

    .line 136
    iget-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->registryBuilder:Lio/grpc/internal/InternalHandlerRegistry$Builder;

    const-string v1, "service"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ServerServiceDefinition;

    invoke-virtual {v0, v1}, Lio/grpc/internal/InternalHandlerRegistry$Builder;->addService(Lio/grpc/ServerServiceDefinition;)Lio/grpc/internal/InternalHandlerRegistry$Builder;

    .line 137
    return-object p0
.end method

.method public bridge synthetic addStreamTracerFactory(Lio/grpc/ServerStreamTracer$Factory;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServerImplBuilder;->addStreamTracerFactory(Lio/grpc/ServerStreamTracer$Factory;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addStreamTracerFactory(Lio/grpc/ServerStreamTracer$Factory;)Lio/grpc/internal/ServerImplBuilder;
    .locals 2
    .param p1, "factory"    # Lio/grpc/ServerStreamTracer$Factory;

    .line 159
    iget-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->streamTracerFactories:Ljava/util/List;

    const-string v1, "factory"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ServerStreamTracer$Factory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    return-object p0
.end method

.method public bridge synthetic addTransportFilter(Lio/grpc/ServerTransportFilter;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServerImplBuilder;->addTransportFilter(Lio/grpc/ServerTransportFilter;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addTransportFilter(Lio/grpc/ServerTransportFilter;)Lio/grpc/internal/ServerImplBuilder;
    .locals 2
    .param p1, "filter"    # Lio/grpc/ServerTransportFilter;

    .line 147
    iget-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->transportFilters:Ljava/util/List;

    const-string v1, "filter"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ServerTransportFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    return-object p0
.end method

.method public build()Lio/grpc/Server;
    .locals 3

    .line 241
    new-instance v0, Lio/grpc/internal/ServerImpl;

    iget-object v1, p0, Lio/grpc/internal/ServerImplBuilder;->clientTransportServersBuilder:Lio/grpc/internal/ServerImplBuilder$ClientTransportServersBuilder;

    .line 242
    invoke-virtual {p0}, Lio/grpc/internal/ServerImplBuilder;->getTracerFactories()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/grpc/internal/ServerImplBuilder$ClientTransportServersBuilder;->buildClientTransportServers(Ljava/util/List;)Lio/grpc/internal/InternalServer;

    move-result-object v1

    sget-object v2, Lio/grpc/Context;->ROOT:Lio/grpc/Context;

    invoke-direct {v0, p0, v1, v2}, Lio/grpc/internal/ServerImpl;-><init>(Lio/grpc/internal/ServerImplBuilder;Lio/grpc/internal/InternalServer;Lio/grpc/Context;)V

    .line 241
    return-object v0
.end method

.method public bridge synthetic callExecutor(Lio/grpc/ServerCallExecutorSupplier;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServerImplBuilder;->callExecutor(Lio/grpc/ServerCallExecutorSupplier;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public callExecutor(Lio/grpc/ServerCallExecutorSupplier;)Lio/grpc/internal/ServerImplBuilder;
    .locals 1
    .param p1, "executorSupplier"    # Lio/grpc/ServerCallExecutorSupplier;

    .line 130
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ServerCallExecutorSupplier;

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->executorSupplier:Lio/grpc/ServerCallExecutorSupplier;

    .line 131
    return-object p0
.end method

.method public bridge synthetic compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/ServerBuilder;
    .locals 0
    .param p1    # Lio/grpc/CompressorRegistry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServerImplBuilder;->compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/internal/ServerImplBuilder;
    .locals 1
    .param p1, "registry"    # Lio/grpc/CompressorRegistry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 177
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    :goto_0
    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 178
    return-object p0
.end method

.method public bridge synthetic decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/ServerBuilder;
    .locals 0
    .param p1    # Lio/grpc/DecompressorRegistry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServerImplBuilder;->decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/internal/ServerImplBuilder;
    .locals 1
    .param p1, "registry"    # Lio/grpc/DecompressorRegistry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 171
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    :goto_0
    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 172
    return-object p0
.end method

.method public bridge synthetic directExecutor()Lio/grpc/ServerBuilder;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lio/grpc/internal/ServerImplBuilder;->directExecutor()Lio/grpc/internal/ServerImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public directExecutor()Lio/grpc/internal/ServerImplBuilder;
    .locals 1

    .line 119
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/internal/ServerImplBuilder;->executor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic executor(Ljava/util/concurrent/Executor;)Lio/grpc/ServerBuilder;
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServerImplBuilder;->executor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public executor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/ServerImplBuilder;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 124
    if-eqz p1, :cond_0

    new-instance v0, Lio/grpc/internal/FixedObjectPool;

    invoke-direct {v0, p1}, Lio/grpc/internal/FixedObjectPool;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    :goto_0
    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    .line 125
    return-object p0
.end method

.method public bridge synthetic fallbackHandlerRegistry(Lio/grpc/HandlerRegistry;)Lio/grpc/ServerBuilder;
    .locals 0
    .param p1    # Lio/grpc/HandlerRegistry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServerImplBuilder;->fallbackHandlerRegistry(Lio/grpc/HandlerRegistry;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public fallbackHandlerRegistry(Lio/grpc/HandlerRegistry;)Lio/grpc/internal/ServerImplBuilder;
    .locals 1
    .param p1, "registry"    # Lio/grpc/HandlerRegistry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 165
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_FALLBACK_REGISTRY:Lio/grpc/HandlerRegistry;

    :goto_0
    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->fallbackRegistry:Lio/grpc/HandlerRegistry;

    .line 166
    return-object p0
.end method

.method public getChannelz()Lio/grpc/InternalChannelz;
    .locals 1

    .line 310
    iget-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->channelz:Lio/grpc/InternalChannelz;

    return-object v0
.end method

.method public getExecutorPool()Lio/grpc/internal/ObjectPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    return-object v0
.end method

.method getTracerFactories()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;"
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v0, "tracerFactories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/grpc/ServerStreamTracer$Factory;>;"
    iget-boolean v1, p0, Lio/grpc/internal/ServerImplBuilder;->statsEnabled:Z

    const/4 v2, 0x0

    const-string v3, "getServerStreamTracerFactory"

    const/4 v4, 0x0

    const-string v5, "Unable to apply census stats"

    if-eqz v1, :cond_0

    .line 250
    const/4 v1, 0x0

    .line 252
    .local v1, "censusStatsTracerFactory":Lio/grpc/ServerStreamTracer$Factory;
    :try_start_0
    const-string v6, "io.grpc.census.InternalCensusStatsAccessor"

    .line 253
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 254
    .local v6, "censusStatsAccessor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x2

    aput-object v9, v8, v11

    .line 255
    invoke-virtual {v6, v3, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 260
    .local v8, "getServerStreamTracerFactoryMethod":Ljava/lang/reflect/Method;
    new-array v7, v7, [Ljava/lang/Object;

    iget-boolean v9, p0, Lio/grpc/internal/ServerImplBuilder;->recordStartedRpcs:Z

    .line 264
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v4

    iget-boolean v9, p0, Lio/grpc/internal/ServerImplBuilder;->recordFinishedRpcs:Z

    .line 265
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v10

    iget-boolean v9, p0, Lio/grpc/internal/ServerImplBuilder;->recordRealTimeMetrics:Z

    .line 266
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v11

    .line 262
    invoke-virtual {v8, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/grpc/ServerStreamTracer$Factory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v7

    .line 276
    .end local v6    # "censusStatsAccessor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "getServerStreamTracerFactoryMethod":Ljava/lang/reflect/Method;
    :goto_0
    goto :goto_1

    .line 274
    :catch_0
    move-exception v6

    .line 275
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v7, Lio/grpc/internal/ServerImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 272
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v6

    .line 273
    .local v6, "e":Ljava/lang/IllegalAccessException;
    sget-object v7, Lio/grpc/internal/ServerImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 270
    :catch_2
    move-exception v6

    .line 271
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    sget-object v7, Lio/grpc/internal/ServerImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 267
    :catch_3
    move-exception v6

    .line 269
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    sget-object v7, Lio/grpc/internal/ServerImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 277
    :goto_1
    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .end local v1    # "censusStatsTracerFactory":Lio/grpc/ServerStreamTracer$Factory;
    :cond_0
    iget-boolean v1, p0, Lio/grpc/internal/ServerImplBuilder;->tracingEnabled:Z

    if-eqz v1, :cond_1

    .line 282
    const/4 v1, 0x0

    .line 284
    .local v1, "tracingStreamTracerFactory":Lio/grpc/ServerStreamTracer$Factory;
    :try_start_1
    const-string v6, "io.grpc.census.InternalCensusTracingAccessor"

    .line 285
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 286
    .local v6, "censusTracingAccessor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v7, v4, [Ljava/lang/Class;

    .line 287
    invoke-virtual {v6, v3, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 288
    .local v3, "getServerStreamTracerFactoryMethod":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    .line 289
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/ServerStreamTracer$Factory;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v1, v2

    .line 299
    .end local v3    # "getServerStreamTracerFactoryMethod":Ljava/lang/reflect/Method;
    .end local v6    # "censusTracingAccessor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    goto :goto_3

    .line 297
    :catch_4
    move-exception v2

    .line 298
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v3, Lio/grpc/internal/ServerImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 295
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v2

    .line 296
    .local v2, "e":Ljava/lang/IllegalAccessException;
    sget-object v3, Lio/grpc/internal/ServerImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_2

    .line 293
    :catch_6
    move-exception v2

    .line 294
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    sget-object v3, Lio/grpc/internal/ServerImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_2

    .line 290
    :catch_7
    move-exception v2

    .line 292
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lio/grpc/internal/ServerImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_2

    .line 300
    :goto_3
    if-eqz v1, :cond_1

    .line 301
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .end local v1    # "tracingStreamTracerFactory":Lio/grpc/ServerStreamTracer$Factory;
    :cond_1
    iget-object v1, p0, Lio/grpc/internal/ServerImplBuilder;->streamTracerFactories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 305
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 306
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/internal/ServerImplBuilder;->handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/internal/ServerImplBuilder;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 183
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "handshake timeout is %s, but must be positive"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 184
    const-string v0, "unit"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/internal/ServerImplBuilder;->handshakeTimeoutMillis:J

    .line 185
    return-object p0
.end method

.method public bridge synthetic intercept(Lio/grpc/ServerInterceptor;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServerImplBuilder;->intercept(Lio/grpc/ServerInterceptor;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public intercept(Lio/grpc/ServerInterceptor;)Lio/grpc/internal/ServerImplBuilder;
    .locals 2
    .param p1, "interceptor"    # Lio/grpc/ServerInterceptor;

    .line 153
    iget-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->interceptors:Ljava/util/List;

    const-string v1, "interceptor"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ServerInterceptor;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return-object p0
.end method

.method public bridge synthetic setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/ServerBuilder;
    .locals 0
    .param p1    # Lio/grpc/BinaryLog;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServerImplBuilder;->setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/internal/ServerImplBuilder;
    .locals 0
    .param p1, "binaryLog"    # Lio/grpc/BinaryLog;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 190
    iput-object p1, p0, Lio/grpc/internal/ServerImplBuilder;->binlog:Lio/grpc/BinaryLog;

    .line 191
    return-object p0
.end method

.method public setDeadlineTicker(Lio/grpc/Deadline$Ticker;)V
    .locals 1
    .param p1, "ticker"    # Lio/grpc/Deadline$Ticker;

    .line 236
    const-string v0, "ticker"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Deadline$Ticker;

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->ticker:Lio/grpc/Deadline$Ticker;

    .line 237
    return-void
.end method

.method public setStatsEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 198
    iput-boolean p1, p0, Lio/grpc/internal/ServerImplBuilder;->statsEnabled:Z

    .line 199
    return-void
.end method

.method public setStatsRecordFinishedRpcs(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 214
    iput-boolean p1, p0, Lio/grpc/internal/ServerImplBuilder;->recordFinishedRpcs:Z

    .line 215
    return-void
.end method

.method public setStatsRecordRealTimeMetrics(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 222
    iput-boolean p1, p0, Lio/grpc/internal/ServerImplBuilder;->recordRealTimeMetrics:Z

    .line 223
    return-void
.end method

.method public setStatsRecordStartedRpcs(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 206
    iput-boolean p1, p0, Lio/grpc/internal/ServerImplBuilder;->recordStartedRpcs:Z

    .line 207
    return-void
.end method

.method public setTracingEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 229
    iput-boolean p1, p0, Lio/grpc/internal/ServerImplBuilder;->tracingEnabled:Z

    .line 230
    return-void
.end method

.method public bridge synthetic useTransportSecurity(Ljava/io/File;Ljava/io/File;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2}, Lio/grpc/internal/ServerImplBuilder;->useTransportSecurity(Ljava/io/File;Ljava/io/File;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public useTransportSecurity(Ljava/io/File;Ljava/io/File;)Lio/grpc/internal/ServerImplBuilder;
    .locals 2
    .param p1, "certChain"    # Ljava/io/File;
    .param p2, "privateKey"    # Ljava/io/File;

    .line 336
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TLS not supported in ServerImplBuilder"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
