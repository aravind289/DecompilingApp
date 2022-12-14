.class final Lio/grpc/internal/ClientCallImpl;
.super Lio/grpc/ClientCall;
.source "ClientCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;,
        Lio/grpc/internal/ClientCallImpl$DeadlineTimer;,
        Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;,
        Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ClientCall<",
        "TReqT;TRespT;>;"
    }
.end annotation


# static fields
.field private static final FULL_STREAM_DECOMPRESSION_ENCODINGS:[B

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final callExecutor:Ljava/util/concurrent/Executor;

.field private final callExecutorIsDirect:Z

.field private callOptions:Lio/grpc/CallOptions;

.field private cancelCalled:Z

.field private volatile cancelListenersShouldBeRemoved:Z

.field private final cancellationListener:Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ClientCallImpl<",
            "TReqT;TRespT;>.ContextCancellation",
            "Listener;"
        }
    .end annotation
.end field

.field private final channelCallsTracer:Lio/grpc/internal/CallTracer;

.field private final clientStreamProvider:Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;

.field private compressorRegistry:Lio/grpc/CompressorRegistry;

.field private final context:Lio/grpc/Context;

.field private final deadlineCancellationExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile deadlineCancellationFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private decompressorRegistry:Lio/grpc/DecompressorRegistry;

.field private fullStreamDecompression:Z

.field private halfCloseCalled:Z

.field private final method:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field private stream:Lio/grpc/internal/ClientStream;

.field private final tag:Lio/perfmark/Tag;

.field private final unaryRequest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    const-class v0, Lio/grpc/internal/ClientCallImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ClientCallImpl;->log:Ljava/util/logging/Logger;

    .line 73
    nop

    .line 74
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ClientCallImpl;->FULL_STREAM_DECOMPRESSION_ENCODINGS:[B

    .line 73
    return-void
.end method

.method constructor <init>(Lio/grpc/MethodDescriptor;Ljava/util/concurrent/Executor;Lio/grpc/CallOptions;Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/CallTracer;Lio/grpc/InternalConfigSelector;)V
    .locals 5
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callOptions"    # Lio/grpc/CallOptions;
    .param p4, "clientStreamProvider"    # Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;
    .param p5, "deadlineCancellationExecutor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p6, "channelCallsTracer"    # Lio/grpc/internal/CallTracer;
    .param p7, "configSelector"    # Lio/grpc/InternalConfigSelector;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Ljava/util/concurrent/Executor;",
            "Lio/grpc/CallOptions;",
            "Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lio/grpc/internal/CallTracer;",
            "Lio/grpc/InternalConfigSelector;",
            ")V"
        }
    .end annotation

    .line 103
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    invoke-direct {p0}, Lio/grpc/ClientCall;-><init>()V

    .line 90
    new-instance v0, Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;-><init>(Lio/grpc/internal/ClientCallImpl;Lio/grpc/internal/ClientCallImpl$1;)V

    iput-object v0, p0, Lio/grpc/internal/ClientCallImpl;->cancellationListener:Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;

    .line 94
    invoke-static {}, Lio/grpc/DecompressorRegistry;->getDefaultInstance()Lio/grpc/DecompressorRegistry;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ClientCallImpl;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 95
    invoke-static {}, Lio/grpc/CompressorRegistry;->getDefaultInstance()Lio/grpc/CompressorRegistry;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ClientCallImpl;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 104
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl;->method:Lio/grpc/MethodDescriptor;

    .line 106
    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lio/perfmark/PerfMark;->createTag(Ljava/lang/String;J)Lio/perfmark/Tag;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    .line 110
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_0

    .line 111
    new-instance v1, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;

    invoke-direct {v1}, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;-><init>()V

    iput-object v1, p0, Lio/grpc/internal/ClientCallImpl;->callExecutor:Ljava/util/concurrent/Executor;

    .line 112
    iput-boolean v2, p0, Lio/grpc/internal/ClientCallImpl;->callExecutorIsDirect:Z

    goto :goto_0

    .line 114
    :cond_0
    new-instance v1, Lio/grpc/internal/SerializingExecutor;

    invoke-direct {v1, p2}, Lio/grpc/internal/SerializingExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lio/grpc/internal/ClientCallImpl;->callExecutor:Ljava/util/concurrent/Executor;

    .line 115
    iput-boolean v3, p0, Lio/grpc/internal/ClientCallImpl;->callExecutorIsDirect:Z

    .line 117
    :goto_0
    iput-object p6, p0, Lio/grpc/internal/ClientCallImpl;->channelCallsTracer:Lio/grpc/internal/CallTracer;

    .line 119
    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    .line 120
    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v1

    sget-object v4, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    if-eq v1, v4, :cond_2

    .line 121
    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v1

    sget-object v4, Lio/grpc/MethodDescriptor$MethodType;->SERVER_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    nop

    :goto_2
    iput-boolean v2, p0, Lio/grpc/internal/ClientCallImpl;->unaryRequest:Z

    .line 122
    iput-object p3, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    .line 123
    iput-object p4, p0, Lio/grpc/internal/ClientCallImpl;->clientStreamProvider:Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;

    .line 124
    iput-object p5, p0, Lio/grpc/internal/ClientCallImpl;->deadlineCancellationExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 125
    const-string v1, "ClientCall.<init>"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->event(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 126
    return-void
.end method

.method static synthetic access$100(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/internal/ClientStream;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ClientCallImpl;

    .line 70
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    return-object v0
.end method

.method static synthetic access$1000(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/Deadline;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ClientCallImpl;

    .line 70
    invoke-direct {p0}, Lio/grpc/internal/ClientCallImpl;->effectiveDeadline()Lio/grpc/Deadline;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1102(Lio/grpc/internal/ClientCallImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ClientCallImpl;
    .param p1, "x1"    # Z

    .line 70
    iput-boolean p1, p0, Lio/grpc/internal/ClientCallImpl;->cancelListenersShouldBeRemoved:Z

    return p1
.end method

.method static synthetic access$1200(Lio/grpc/internal/ClientCallImpl;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ClientCallImpl;

    .line 70
    invoke-direct {p0}, Lio/grpc/internal/ClientCallImpl;->removeContextListenerAndCancelDeadlineFuture()V

    return-void
.end method

.method static synthetic access$1300(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/internal/CallTracer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ClientCallImpl;

    .line 70
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->channelCallsTracer:Lio/grpc/internal/CallTracer;

    return-object v0
.end method

.method static synthetic access$200(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/Context;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ClientCallImpl;

    .line 70
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/internal/ClientCallImpl;Lio/grpc/ClientCall$Listener;Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ClientCallImpl;
    .param p1, "x1"    # Lio/grpc/ClientCall$Listener;
    .param p2, "x2"    # Lio/grpc/Status;
    .param p3, "x3"    # Lio/grpc/Metadata;

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/internal/ClientCallImpl;->closeObserver(Lio/grpc/ClientCall$Listener;Lio/grpc/Status;Lio/grpc/Metadata;)V

    return-void
.end method

.method static synthetic access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ClientCallImpl;

    .line 70
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    return-object v0
.end method

.method static synthetic access$800(Lio/grpc/internal/ClientCallImpl;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ClientCallImpl;

    .line 70
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->callExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$900(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/MethodDescriptor;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ClientCallImpl;

    .line 70
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->method:Lio/grpc/MethodDescriptor;

    return-object v0
.end method

.method private applyMethodConfig()V
    .locals 5

    .line 313
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    sget-object v1, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->KEY:Lio/grpc/CallOptions$Key;

    invoke-virtual {v0, v1}, Lio/grpc/CallOptions;->getOption(Lio/grpc/CallOptions$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    .line 314
    .local v0, "info":Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    if-nez v0, :cond_0

    .line 315
    return-void

    .line 317
    :cond_0
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->timeoutNanos:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 318
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->timeoutNanos:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3}, Lio/grpc/Deadline;->after(JLjava/util/concurrent/TimeUnit;)Lio/grpc/Deadline;

    move-result-object v1

    .line 319
    .local v1, "newDeadline":Lio/grpc/Deadline;
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v2}, Lio/grpc/CallOptions;->getDeadline()Lio/grpc/Deadline;

    move-result-object v2

    .line 321
    .local v2, "existingDeadline":Lio/grpc/Deadline;
    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lio/grpc/Deadline;->compareTo(Lio/grpc/Deadline;)I

    move-result v3

    if-gez v3, :cond_2

    .line 322
    :cond_1
    iget-object v3, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v3, v1}, Lio/grpc/CallOptions;->withDeadline(Lio/grpc/Deadline;)Lio/grpc/CallOptions;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    .line 325
    .end local v1    # "newDeadline":Lio/grpc/Deadline;
    .end local v2    # "existingDeadline":Lio/grpc/Deadline;
    :cond_2
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->waitForReady:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 326
    nop

    .line 327
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->waitForReady:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1}, Lio/grpc/CallOptions;->withWaitForReady()Lio/grpc/CallOptions;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1}, Lio/grpc/CallOptions;->withoutWaitForReady()Lio/grpc/CallOptions;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    .line 329
    :cond_4
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxInboundMessageSize:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 330
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1}, Lio/grpc/CallOptions;->getMaxInboundMessageSize()Ljava/lang/Integer;

    move-result-object v1

    .line 331
    .local v1, "existingLimit":Ljava/lang/Integer;
    if-eqz v1, :cond_5

    .line 332
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    .line 334
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxInboundMessageSize:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 333
    invoke-virtual {v2, v3}, Lio/grpc/CallOptions;->withMaxInboundMessageSize(I)Lio/grpc/CallOptions;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    goto :goto_1

    .line 336
    :cond_5
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    iget-object v3, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxInboundMessageSize:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lio/grpc/CallOptions;->withMaxInboundMessageSize(I)Lio/grpc/CallOptions;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    .line 339
    .end local v1    # "existingLimit":Ljava/lang/Integer;
    :cond_6
    :goto_1
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxOutboundMessageSize:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 340
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1}, Lio/grpc/CallOptions;->getMaxOutboundMessageSize()Ljava/lang/Integer;

    move-result-object v1

    .line 341
    .restart local v1    # "existingLimit":Ljava/lang/Integer;
    if-eqz v1, :cond_7

    .line 342
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    .line 344
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxOutboundMessageSize:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 343
    invoke-virtual {v2, v3}, Lio/grpc/CallOptions;->withMaxOutboundMessageSize(I)Lio/grpc/CallOptions;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    goto :goto_2

    .line 346
    :cond_7
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    iget-object v3, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxOutboundMessageSize:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lio/grpc/CallOptions;->withMaxOutboundMessageSize(I)Lio/grpc/CallOptions;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    .line 349
    .end local v1    # "existingLimit":Ljava/lang/Integer;
    :cond_8
    :goto_2
    return-void
.end method

.method private cancelInternal(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cause"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 456
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 457
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Cancelled without a message or cause"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    .line 458
    sget-object v0, Lio/grpc/internal/ClientCallImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Cancelling without a message or cause is suboptimal"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    :cond_0
    iget-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->cancelCalled:Z

    if-eqz v0, :cond_1

    .line 461
    return-void

    .line 463
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->cancelCalled:Z

    .line 467
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    if-eqz v0, :cond_4

    .line 468
    sget-object v0, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    .line 469
    .local v0, "status":Lio/grpc/Status;
    if-eqz p1, :cond_2

    .line 470
    invoke-virtual {v0, p1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 472
    :cond_2
    const-string v1, "Call cancelled without message"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    move-object v0, v1

    .line 474
    :goto_0
    if-eqz p2, :cond_3

    .line 475
    invoke-virtual {v0, p2}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v1

    move-object v0, v1

    .line 477
    :cond_3
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v1, v0}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    .end local v0    # "status":Lio/grpc/Status;
    :cond_4
    invoke-direct {p0}, Lio/grpc/internal/ClientCallImpl;->removeContextListenerAndCancelDeadlineFuture()V

    .line 481
    nop

    .line 482
    return-void

    .line 480
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lio/grpc/internal/ClientCallImpl;->removeContextListenerAndCancelDeadlineFuture()V

    throw v0
.end method

.method private closeObserver(Lio/grpc/ClientCall$Listener;Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 0
    .param p2, "status"    # Lio/grpc/Status;
    .param p3, "trailers"    # Lio/grpc/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;",
            "Lio/grpc/Status;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    .line 562
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    .local p1, "observer":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    invoke-virtual {p1, p2, p3}, Lio/grpc/ClientCall$Listener;->onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 563
    return-void
.end method

.method private effectiveDeadline()Lio/grpc/Deadline;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 419
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v0}, Lio/grpc/CallOptions;->getDeadline()Lio/grpc/Deadline;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    invoke-virtual {v1}, Lio/grpc/Context;->getDeadline()Lio/grpc/Deadline;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/internal/ClientCallImpl;->min(Lio/grpc/Deadline;Lio/grpc/Deadline;)Lio/grpc/Deadline;

    move-result-object v0

    return-object v0
.end method

.method private halfCloseInternal()V
    .locals 3

    .line 495
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Not started"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 496
    iget-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->cancelCalled:Z

    xor-int/2addr v0, v1

    const-string v2, "call was cancelled"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 497
    iget-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->halfCloseCalled:Z

    xor-int/2addr v0, v1

    const-string v2, "call already half-closed"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 498
    iput-boolean v1, p0, Lio/grpc/internal/ClientCallImpl;->halfCloseCalled:Z

    .line 499
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->halfClose()V

    .line 500
    return-void
.end method

.method private static logIfContextNarrowedTimeout(Lio/grpc/Deadline;Lio/grpc/Deadline;Lio/grpc/Deadline;)V
    .locals 9
    .param p0, "effectiveDeadline"    # Lio/grpc/Deadline;
    .param p1, "outerCallDeadline"    # Lio/grpc/Deadline;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "callDeadline"    # Lio/grpc/Deadline;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 354
    sget-object v0, Lio/grpc/internal/ClientCallImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    .line 355
    invoke-virtual {p0, p1}, Lio/grpc/Deadline;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 359
    :cond_0
    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v3}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 360
    .local v1, "effectiveTimeout":J
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 361
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 360
    const-string v6, "Call timeout set to \'%d\' ns, due to context deadline."

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    .local v3, "builder":Ljava/lang/StringBuilder;
    if-nez p2, :cond_1

    .line 363
    const-string v4, " Explicit call timeout was not set."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 365
    :cond_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v5}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    .line 366
    .local v5, "callTimeout":J
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v7

    const-string v7, " Explicit call timeout was \'%d\' ns."

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .end local v5    # "callTimeout":J
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 370
    return-void

    .line 356
    .end local v1    # "effectiveTimeout":J
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    return-void
.end method

.method private static min(Lio/grpc/Deadline;Lio/grpc/Deadline;)Lio/grpc/Deadline;
    .locals 1
    .param p0, "deadline0"    # Lio/grpc/Deadline;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "deadline1"    # Lio/grpc/Deadline;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 424
    if-nez p0, :cond_0

    .line 425
    return-object p1

    .line 427
    :cond_0
    if-nez p1, :cond_1

    .line 428
    return-object p0

    .line 430
    :cond_1
    invoke-virtual {p0, p1}, Lio/grpc/Deadline;->minimum(Lio/grpc/Deadline;)Lio/grpc/Deadline;

    move-result-object v0

    return-object v0
.end method

.method static prepareHeaders(Lio/grpc/Metadata;Lio/grpc/DecompressorRegistry;Lio/grpc/Compressor;Z)V
    .locals 3
    .param p0, "headers"    # Lio/grpc/Metadata;
    .param p1, "decompressorRegistry"    # Lio/grpc/DecompressorRegistry;
    .param p2, "compressor"    # Lio/grpc/Compressor;
    .param p3, "fullStreamDecompression"    # Z

    .line 167
    sget-object v0, Lio/grpc/internal/GrpcUtil;->CONTENT_LENGTH_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 168
    sget-object v0, Lio/grpc/internal/GrpcUtil;->MESSAGE_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 169
    sget-object v0, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    if-eq p2, v0, :cond_0

    .line 170
    sget-object v0, Lio/grpc/internal/GrpcUtil;->MESSAGE_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-interface {p2}, Lio/grpc/Compressor;->getMessageEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 173
    :cond_0
    sget-object v0, Lio/grpc/internal/GrpcUtil;->MESSAGE_ACCEPT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 174
    nop

    .line 175
    invoke-static {p1}, Lio/grpc/InternalDecompressorRegistry;->getRawAdvertisedMessageEncodings(Lio/grpc/DecompressorRegistry;)[B

    move-result-object v0

    .line 176
    .local v0, "advertisedEncodings":[B
    array-length v1, v0

    if-eqz v1, :cond_1

    .line 177
    sget-object v1, Lio/grpc/internal/GrpcUtil;->MESSAGE_ACCEPT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v1, v0}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 180
    :cond_1
    sget-object v1, Lio/grpc/internal/GrpcUtil;->CONTENT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v1}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 181
    sget-object v1, Lio/grpc/internal/GrpcUtil;->CONTENT_ACCEPT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v1}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 182
    if-eqz p3, :cond_2

    .line 183
    sget-object v1, Lio/grpc/internal/GrpcUtil;->CONTENT_ACCEPT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    sget-object v2, Lio/grpc/internal/ClientCallImpl;->FULL_STREAM_DECOMPRESSION_ENCODINGS:[B

    invoke-virtual {p0, v1, v2}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 185
    :cond_2
    return-void
.end method

.method private removeContextListenerAndCancelDeadlineFuture()V
    .locals 2

    .line 373
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->cancellationListener:Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;

    invoke-virtual {v0, v1}, Lio/grpc/Context;->removeListener(Lio/grpc/Context$CancellationListener;)V

    .line 374
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->deadlineCancellationFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 375
    .local v0, "f":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    if-eqz v0, :cond_0

    .line 376
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 378
    :cond_0
    return-void
.end method

.method private sendMessageInternal(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 513
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    .local p1, "message":Ljava/lang/Object;, "TReqT;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Not started"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 514
    iget-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->cancelCalled:Z

    xor-int/2addr v0, v1

    const-string v2, "call was cancelled"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 515
    iget-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->halfCloseCalled:Z

    xor-int/2addr v0, v1

    const-string v1, "call was half-closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 517
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    instance-of v1, v0, Lio/grpc/internal/RetriableStream;

    if-eqz v1, :cond_1

    .line 519
    check-cast v0, Lio/grpc/internal/RetriableStream;

    .line 520
    .local v0, "retriableStream":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    invoke-virtual {v0, p1}, Lio/grpc/internal/RetriableStream;->sendMessage(Ljava/lang/Object;)V

    .line 521
    .end local v0    # "retriableStream":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    goto :goto_1

    .line 522
    :cond_1
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v1, p1}, Lio/grpc/MethodDescriptor;->streamRequest(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/internal/ClientStream;->writeMessage(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_1
    nop

    .line 534
    iget-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->unaryRequest:Z

    if-nez v0, :cond_2

    .line 535
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->flush()V

    .line 537
    :cond_2
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/Error;
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    sget-object v2, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    const-string v3, "Client sendMessage() failed with Error"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    .line 529
    throw v0

    .line 524
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v0

    .line 525
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    sget-object v2, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    invoke-virtual {v2, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v2

    const-string v3, "Failed to stream message"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    .line 526
    return-void
.end method

.method private startDeadlineTimer(Lio/grpc/Deadline;)Ljava/util/concurrent/ScheduledFuture;
    .locals 5
    .param p1, "deadline"    # Lio/grpc/Deadline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Deadline;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 410
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 411
    .local v0, "remainingNanos":J
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->deadlineCancellationExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lio/grpc/internal/LogExceptionRunnable;

    new-instance v4, Lio/grpc/internal/ClientCallImpl$DeadlineTimer;

    invoke-direct {v4, p0, v0, v1}, Lio/grpc/internal/ClientCallImpl$DeadlineTimer;-><init>(Lio/grpc/internal/ClientCallImpl;J)V

    invoke-direct {v3, v4}, Lio/grpc/internal/LogExceptionRunnable;-><init>(Ljava/lang/Runnable;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    return-object v2
.end method

.method private startInternal(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    .locals 9
    .param p2, "headers"    # Lio/grpc/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    .line 198
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    .local p1, "observer":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Already started"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 199
    iget-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->cancelCalled:Z

    xor-int/2addr v0, v1

    const-string v3, "call was cancelled"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 200
    const-string v0, "observer"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v0, "headers"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    invoke-virtual {v0}, Lio/grpc/Context;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    sget-object v0, Lio/grpc/internal/NoopClientStream;->INSTANCE:Lio/grpc/internal/NoopClientStream;

    iput-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    .line 207
    move-object v0, p1

    .line 219
    .local v0, "finalObserver":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->callExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lio/grpc/internal/ClientCallImpl$1ClosedByContext;

    invoke-direct {v2, p0, v0}, Lio/grpc/internal/ClientCallImpl$1ClosedByContext;-><init>(Lio/grpc/internal/ClientCallImpl;Lio/grpc/ClientCall$Listener;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 220
    return-void

    .line 222
    .end local v0    # "finalObserver":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    :cond_1
    invoke-direct {p0}, Lio/grpc/internal/ClientCallImpl;->applyMethodConfig()V

    .line 223
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v0}, Lio/grpc/CallOptions;->getCompressor()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "compressorName":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 226
    iget-object v3, p0, Lio/grpc/internal/ClientCallImpl;->compressorRegistry:Lio/grpc/CompressorRegistry;

    invoke-virtual {v3, v0}, Lio/grpc/CompressorRegistry;->lookupCompressor(Ljava/lang/String;)Lio/grpc/Compressor;

    move-result-object v3

    .line 227
    .local v3, "compressor":Lio/grpc/Compressor;
    if-nez v3, :cond_3

    .line 228
    sget-object v1, Lio/grpc/internal/NoopClientStream;->INSTANCE:Lio/grpc/internal/NoopClientStream;

    iput-object v1, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    .line 229
    move-object v1, p1

    .line 245
    .local v1, "finalObserver":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lio/grpc/internal/ClientCallImpl$1ClosedByNotFoundCompressor;

    invoke-direct {v4, p0, v1, v0}, Lio/grpc/internal/ClientCallImpl$1ClosedByNotFoundCompressor;-><init>(Lio/grpc/internal/ClientCallImpl;Lio/grpc/ClientCall$Listener;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 246
    return-void

    .line 249
    .end local v1    # "finalObserver":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    .end local v3    # "compressor":Lio/grpc/Compressor;
    :cond_2
    sget-object v3, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    .line 251
    .restart local v3    # "compressor":Lio/grpc/Compressor;
    :cond_3
    iget-object v4, p0, Lio/grpc/internal/ClientCallImpl;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    iget-boolean v5, p0, Lio/grpc/internal/ClientCallImpl;->fullStreamDecompression:Z

    invoke-static {p2, v4, v3, v5}, Lio/grpc/internal/ClientCallImpl;->prepareHeaders(Lio/grpc/Metadata;Lio/grpc/DecompressorRegistry;Lio/grpc/Compressor;Z)V

    .line 253
    invoke-direct {p0}, Lio/grpc/internal/ClientCallImpl;->effectiveDeadline()Lio/grpc/Deadline;

    move-result-object v4

    .line 254
    .local v4, "effectiveDeadline":Lio/grpc/Deadline;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lio/grpc/Deadline;->isExpired()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 255
    .local v1, "deadlineExceeded":Z
    :goto_1
    if-nez v1, :cond_5

    .line 256
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    .line 257
    invoke-virtual {v2}, Lio/grpc/Context;->getDeadline()Lio/grpc/Deadline;

    move-result-object v2

    iget-object v5, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v5}, Lio/grpc/CallOptions;->getDeadline()Lio/grpc/Deadline;

    move-result-object v5

    .line 256
    invoke-static {v4, v2, v5}, Lio/grpc/internal/ClientCallImpl;->logIfContextNarrowedTimeout(Lio/grpc/Deadline;Lio/grpc/Deadline;Lio/grpc/Deadline;)V

    .line 258
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->clientStreamProvider:Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;

    iget-object v5, p0, Lio/grpc/internal/ClientCallImpl;->method:Lio/grpc/MethodDescriptor;

    iget-object v6, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    iget-object v7, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    invoke-interface {v2, v5, v6, p2, v7}, Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Metadata;Lio/grpc/Context;)Lio/grpc/internal/ClientStream;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    goto :goto_2

    .line 260
    :cond_5
    iget-object v5, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    .line 261
    invoke-static {v5, p2, v2, v2}, Lio/grpc/internal/GrpcUtil;->getClientStreamTracers(Lio/grpc/CallOptions;Lio/grpc/Metadata;IZ)[Lio/grpc/ClientStreamTracer;

    move-result-object v2

    .line 262
    .local v2, "tracers":[Lio/grpc/ClientStreamTracer;
    new-instance v5, Lio/grpc/internal/FailingClientStream;

    sget-object v6, Lio/grpc/Status;->DEADLINE_EXCEEDED:Lio/grpc/Status;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClientCall started after deadline exceeded: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 263
    invoke-virtual {v6, v7}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lio/grpc/internal/FailingClientStream;-><init>(Lio/grpc/Status;[Lio/grpc/ClientStreamTracer;)V

    iput-object v5, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    .line 268
    .end local v2    # "tracers":[Lio/grpc/ClientStreamTracer;
    :goto_2
    iget-boolean v2, p0, Lio/grpc/internal/ClientCallImpl;->callExecutorIsDirect:Z

    if-eqz v2, :cond_6

    .line 269
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v2}, Lio/grpc/internal/ClientStream;->optimizeForDirectExecutor()V

    .line 271
    :cond_6
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v2}, Lio/grpc/CallOptions;->getAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 272
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    iget-object v5, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v5}, Lio/grpc/CallOptions;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lio/grpc/internal/ClientStream;->setAuthority(Ljava/lang/String;)V

    .line 274
    :cond_7
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v2}, Lio/grpc/CallOptions;->getMaxInboundMessageSize()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 275
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    iget-object v5, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v5}, Lio/grpc/CallOptions;->getMaxInboundMessageSize()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v2, v5}, Lio/grpc/internal/ClientStream;->setMaxInboundMessageSize(I)V

    .line 277
    :cond_8
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v2}, Lio/grpc/CallOptions;->getMaxOutboundMessageSize()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 278
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    iget-object v5, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v5}, Lio/grpc/CallOptions;->getMaxOutboundMessageSize()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v2, v5}, Lio/grpc/internal/ClientStream;->setMaxOutboundMessageSize(I)V

    .line 280
    :cond_9
    if-eqz v4, :cond_a

    .line 281
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v2, v4}, Lio/grpc/internal/ClientStream;->setDeadline(Lio/grpc/Deadline;)V

    .line 283
    :cond_a
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v2, v3}, Lio/grpc/internal/ClientStream;->setCompressor(Lio/grpc/Compressor;)V

    .line 284
    iget-boolean v2, p0, Lio/grpc/internal/ClientCallImpl;->fullStreamDecompression:Z

    if-eqz v2, :cond_b

    .line 285
    iget-object v5, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v5, v2}, Lio/grpc/internal/ClientStream;->setFullStreamDecompression(Z)V

    .line 287
    :cond_b
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    iget-object v5, p0, Lio/grpc/internal/ClientCallImpl;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    invoke-interface {v2, v5}, Lio/grpc/internal/ClientStream;->setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)V

    .line 288
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->channelCallsTracer:Lio/grpc/internal/CallTracer;

    invoke-virtual {v2}, Lio/grpc/internal/CallTracer;->reportCallStarted()V

    .line 289
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    new-instance v5, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    invoke-direct {v5, p0, p1}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;-><init>(Lio/grpc/internal/ClientCallImpl;Lio/grpc/ClientCall$Listener;)V

    invoke-interface {v2, v5}, Lio/grpc/internal/ClientStream;->start(Lio/grpc/internal/ClientStreamListener;)V

    .line 295
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    iget-object v5, p0, Lio/grpc/internal/ClientCallImpl;->cancellationListener:Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lio/grpc/Context;->addListener(Lio/grpc/Context$CancellationListener;Ljava/util/concurrent/Executor;)V

    .line 296
    if-eqz v4, :cond_c

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    .line 298
    invoke-virtual {v2}, Lio/grpc/Context;->getDeadline()Lio/grpc/Deadline;

    move-result-object v2

    invoke-virtual {v4, v2}, Lio/grpc/Deadline;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->deadlineCancellationExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v2, :cond_c

    .line 301
    invoke-direct {p0, v4}, Lio/grpc/internal/ClientCallImpl;->startDeadlineTimer(Lio/grpc/Deadline;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/internal/ClientCallImpl;->deadlineCancellationFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 303
    :cond_c
    iget-boolean v2, p0, Lio/grpc/internal/ClientCallImpl;->cancelListenersShouldBeRemoved:Z

    if-eqz v2, :cond_d

    .line 308
    invoke-direct {p0}, Lio/grpc/internal/ClientCallImpl;->removeContextListenerAndCancelDeadlineFuture()V

    .line 310
    :cond_d
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cause"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 447
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    const-string v1, "ClientCall.cancel"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 449
    :try_start_0
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/ClientCallImpl;->cancelInternal(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 452
    nop

    .line 453
    return-void

    .line 451
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v0
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 555
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    if-eqz v0, :cond_0

    .line 556
    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0

    .line 558
    :cond_0
    sget-object v0, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    return-object v0
.end method

.method public halfClose()V
    .locals 3

    .line 486
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    const-string v1, "ClientCall.halfClose"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 488
    :try_start_0
    invoke-direct {p0}, Lio/grpc/internal/ClientCallImpl;->halfCloseInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 491
    nop

    .line 492
    return-void

    .line 490
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v0
.end method

.method public isReady()Z
    .locals 1

    .line 547
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iget-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->halfCloseCalled:Z

    if-eqz v0, :cond_0

    .line 548
    const/4 v0, 0x0

    return v0

    .line 550
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->isReady()Z

    move-result v0

    return v0
.end method

.method public request(I)V
    .locals 5
    .param p1, "numMessages"    # I

    .line 435
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    const-string v1, "ClientCall.request"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 437
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v4, "Not started"

    invoke-static {v0, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 438
    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v0, "Number requested must be non-negative"

    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->request(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 442
    nop

    .line 443
    return-void

    .line 441
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v0
.end method

.method public sendMessage(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 504
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    .local p1, "message":Ljava/lang/Object;, "TReqT;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    const-string v1, "ClientCall.sendMessage"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 506
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/internal/ClientCallImpl;->sendMessageInternal(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 509
    nop

    .line 510
    return-void

    .line 508
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v0
.end method

.method setCompressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/internal/ClientCallImpl;
    .locals 0
    .param p1, "compressorRegistry"    # Lio/grpc/CompressorRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/CompressorRegistry;",
            ")",
            "Lio/grpc/internal/ClientCallImpl<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 157
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 158
    return-object p0
.end method

.method setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/internal/ClientCallImpl;
    .locals 0
    .param p1, "decompressorRegistry"    # Lio/grpc/DecompressorRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/DecompressorRegistry;",
            ")",
            "Lio/grpc/internal/ClientCallImpl<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 152
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 153
    return-object p0
.end method

.method setFullStreamDecompression(Z)Lio/grpc/internal/ClientCallImpl;
    .locals 0
    .param p1, "fullStreamDecompression"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/grpc/internal/ClientCallImpl<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iput-boolean p1, p0, Lio/grpc/internal/ClientCallImpl;->fullStreamDecompression:Z

    .line 148
    return-object p0
.end method

.method public setMessageCompression(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 541
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 542
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->setMessageCompression(Z)V

    .line 543
    return-void
.end method

.method public start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    .locals 3
    .param p2, "headers"    # Lio/grpc/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    .line 189
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    .local p1, "observer":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    const-string v1, "ClientCall.start"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 191
    :try_start_0
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/ClientCallImpl;->startInternal(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 194
    nop

    .line 195
    return-void

    .line 193
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 567
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->method:Lio/grpc/MethodDescriptor;

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
