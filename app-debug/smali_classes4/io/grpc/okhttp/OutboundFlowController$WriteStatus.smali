.class final Lio/grpc/okhttp/OutboundFlowController$WriteStatus;
.super Ljava/lang/Object;
.source "OutboundFlowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OutboundFlowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WriteStatus"
.end annotation


# instance fields
.field numWrites:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/okhttp/OutboundFlowController$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/okhttp/OutboundFlowController$1;

    .line 204
    invoke-direct {p0}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;-><init>()V

    return-void
.end method


# virtual methods
.method hasWritten()Z
    .locals 1

    .line 212
    iget v0, p0, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;->numWrites:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method incrementNumWrites()V
    .locals 1

    .line 208
    iget v0, p0, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;->numWrites:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;->numWrites:I

    .line 209
    return-void
.end method
