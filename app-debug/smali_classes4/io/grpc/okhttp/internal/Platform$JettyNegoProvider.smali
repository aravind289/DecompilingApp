.class Lio/grpc/okhttp/internal/Platform$JettyNegoProvider;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/internal/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JettyNegoProvider"
.end annotation


# instance fields
.field private final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selected:Ljava/lang/String;

.field private unsupported:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 560
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput-object p1, p0, Lio/grpc/okhttp/internal/Platform$JettyNegoProvider;->protocols:Ljava/util/List;

    .line 562
    return-void
.end method

.method static synthetic access$100(Lio/grpc/okhttp/internal/Platform$JettyNegoProvider;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/internal/Platform$JettyNegoProvider;

    .line 552
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/Platform$JettyNegoProvider;->unsupported:Z

    return v0
.end method

.method static synthetic access$200(Lio/grpc/okhttp/internal/Platform$JettyNegoProvider;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/internal/Platform$JettyNegoProvider;

    .line 552
    iget-object v0, p0, Lio/grpc/okhttp/internal/Platform$JettyNegoProvider;->selected:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 565
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "methodName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 567
    .local v1, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p3, :cond_0

    .line 568
    sget-object p3, Lio/grpc/okhttp/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 570
    :cond_0
    const-string v2, "supports"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v1, :cond_1

    .line 571
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 572
    :cond_1
    const-string v2, "unsupported"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v1, :cond_2

    .line 573
    iput-boolean v3, p0, Lio/grpc/okhttp/internal/Platform$JettyNegoProvider;->unsupported:Z

    .line 574
    return-object v4

    .line 575
    :cond_2
    const-string v2, "protocols"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    array-length v2, p3

    if-nez v2, :cond_3

    .line 576
    iget-object v2, p0, Lio/grpc/okhttp/internal/Platform$JettyNegoProvider;->protocols:Ljava/util/List;

    return-object v2

    .line 577
    :cond_3
    const-string v2, "selectProtocol"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_4

    const-string v2, "select"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    const-class v2, Ljava/lang/String;

    if-ne v2, v1, :cond_7

    array-length v2, p3

    if-ne v2, v3, :cond_7

    aget-object v2, p3, v5

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_7

    .line 580
    aget-object v2, p3, v5

    check-cast v2, Ljava/util/List;

    .line 582
    .local v2, "peerProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v3, v4, :cond_6

    .line 583
    iget-object v6, p0, Lio/grpc/okhttp/internal/Platform$JettyNegoProvider;->protocols:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 584
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lio/grpc/okhttp/internal/Platform$JettyNegoProvider;->selected:Ljava/lang/String;

    return-object v5

    .line 582
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 587
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_6
    iget-object v3, p0, Lio/grpc/okhttp/internal/Platform$JettyNegoProvider;->protocols:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lio/grpc/okhttp/internal/Platform$JettyNegoProvider;->selected:Ljava/lang/String;

    return-object v3

    .line 588
    .end local v2    # "peerProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    const-string v2, "protocolSelected"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "selected"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    array-length v2, p3

    if-ne v2, v3, :cond_9

    .line 590
    aget-object v2, p3, v5

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lio/grpc/okhttp/internal/Platform$JettyNegoProvider;->selected:Ljava/lang/String;

    .line 591
    return-object v4

    .line 593
    :cond_9
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
