.class public final Lio/grpc/internal/GrpcUtil$GrpcBuildVersion;
.super Ljava/lang/Object;
.source "GrpcUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/GrpcUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GrpcBuildVersion"
.end annotation


# instance fields
.field private final implementationVersion:Ljava/lang/String;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "implementationVersion"    # Ljava/lang/String;

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    const-string v0, "userAgentName"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/internal/GrpcUtil$GrpcBuildVersion;->userAgent:Ljava/lang/String;

    .line 467
    nop

    .line 468
    const-string v0, "implementationVersion"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/internal/GrpcUtil$GrpcBuildVersion;->implementationVersion:Ljava/lang/String;

    .line 469
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/grpc/internal/GrpcUtil$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lio/grpc/internal/GrpcUtil$1;

    .line 461
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/GrpcUtil$GrpcBuildVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getImplementationVersion()Ljava/lang/String;
    .locals 1

    .line 476
    iget-object v0, p0, Lio/grpc/internal/GrpcUtil$GrpcBuildVersion;->implementationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 472
    iget-object v0, p0, Lio/grpc/internal/GrpcUtil$GrpcBuildVersion;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/grpc/internal/GrpcUtil$GrpcBuildVersion;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/GrpcUtil$GrpcBuildVersion;->implementationVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
