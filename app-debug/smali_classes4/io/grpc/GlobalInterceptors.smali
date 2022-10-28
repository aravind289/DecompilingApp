.class final Lio/grpc/GlobalInterceptors;
.super Ljava/lang/Object;
.source "GlobalInterceptors.java"


# static fields
.field private static clientInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private static isGlobalInterceptorsTracersGet:Z

.field private static isGlobalInterceptorsTracersSet:Z

.field private static serverInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ServerInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private static serverStreamTracerFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/grpc/GlobalInterceptors;->clientInterceptors:Ljava/util/List;

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/grpc/GlobalInterceptors;->serverInterceptors:Ljava/util/List;

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/grpc/GlobalInterceptors;->serverStreamTracerFactories:Ljava/util/List;

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized getClientInterceptors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;"
        }
    .end annotation

    const-class v0, Lio/grpc/GlobalInterceptors;

    monitor-enter v0

    .line 84
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lio/grpc/GlobalInterceptors;->isGlobalInterceptorsTracersGet:Z

    .line 85
    sget-object v1, Lio/grpc/GlobalInterceptors;->clientInterceptors:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized getServerInterceptors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ServerInterceptor;",
            ">;"
        }
    .end annotation

    const-class v0, Lio/grpc/GlobalInterceptors;

    monitor-enter v0

    .line 90
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lio/grpc/GlobalInterceptors;->isGlobalInterceptorsTracersGet:Z

    .line 91
    sget-object v1, Lio/grpc/GlobalInterceptors;->serverInterceptors:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized getServerStreamTracerFactories()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;"
        }
    .end annotation

    const-class v0, Lio/grpc/GlobalInterceptors;

    monitor-enter v0

    .line 99
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lio/grpc/GlobalInterceptors;->isGlobalInterceptorsTracersGet:Z

    .line 100
    sget-object v1, Lio/grpc/GlobalInterceptors;->serverStreamTracerFactories:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized setInterceptorsTracers(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;",
            "Ljava/util/List<",
            "Lio/grpc/ServerInterceptor;",
            ">;",
            "Ljava/util/List<",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;)V"
        }
    .end annotation

    .local p0, "clientInterceptorList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ClientInterceptor;>;"
    .local p1, "serverInterceptorList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ServerInterceptor;>;"
    .local p2, "serverStreamTracerFactoryList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ServerStreamTracer$Factory;>;"
    const-class v0, Lio/grpc/GlobalInterceptors;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-boolean v1, Lio/grpc/GlobalInterceptors;->isGlobalInterceptorsTracersGet:Z

    if-nez v1, :cond_4

    .line 61
    sget-boolean v1, Lio/grpc/GlobalInterceptors;->isGlobalInterceptorsTracersSet:Z

    if-nez v1, :cond_3

    .line 65
    if-eqz p0, :cond_0

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lio/grpc/GlobalInterceptors;->clientInterceptors:Ljava/util/List;

    .line 69
    :cond_0
    if-eqz p1, :cond_1

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lio/grpc/GlobalInterceptors;->serverInterceptors:Ljava/util/List;

    .line 73
    :cond_1
    if-eqz p2, :cond_2

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 75
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lio/grpc/GlobalInterceptors;->serverStreamTracerFactories:Ljava/util/List;

    .line 77
    :cond_2
    const/4 v1, 0x1

    sput-boolean v1, Lio/grpc/GlobalInterceptors;->isGlobalInterceptorsTracersSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit v0

    return-void

    .line 62
    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Global interceptors and tracers are already set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Set cannot be called after any get call"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .end local p0    # "clientInterceptorList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ClientInterceptor;>;"
    .end local p1    # "serverInterceptorList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ServerInterceptor;>;"
    .end local p2    # "serverStreamTracerFactoryList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ServerStreamTracer$Factory;>;"
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
