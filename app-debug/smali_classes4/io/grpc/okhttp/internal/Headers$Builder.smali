.class public final Lio/grpc/okhttp/internal/Headers$Builder;
.super Ljava/lang/Object;
.source "Headers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/internal/Headers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final namesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/grpc/okhttp/internal/Headers$Builder;->namesAndValues:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lio/grpc/okhttp/internal/Headers$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/internal/Headers$Builder;

    .line 93
    iget-object v0, p0, Lio/grpc/okhttp/internal/Headers$Builder;->namesAndValues:Ljava/util/List;

    return-object v0
.end method

.method private checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 129
    if-eqz p1, :cond_6

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "length":I
    :goto_0
    const/16 v2, 0x7f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/16 v6, 0x1f

    const/4 v7, 0x1

    if-ge v0, v1, :cond_1

    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 133
    .local v8, "c":C
    if-le v8, v6, :cond_0

    if-ge v8, v2, :cond_0

    .line 131
    .end local v8    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .restart local v8    # "c":C
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v5, v5, [Ljava/lang/Object;

    .line 135
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v7

    aput-object p1, v5, v3

    .line 134
    const-string v3, "Unexpected char %#04x at %d in header name: %s"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v8    # "c":C
    :cond_1
    if-eqz p2, :cond_4

    .line 139
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .restart local v1    # "length":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 140
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 141
    .restart local v8    # "c":C
    if-le v8, v6, :cond_2

    if-ge v8, v2, :cond_2

    .line 139
    .end local v8    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 142
    .restart local v8    # "c":C
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v5, v5, [Ljava/lang/Object;

    .line 143
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v7

    aput-object p2, v5, v3

    .line 142
    const-string v3, "Unexpected char %#04x at %d in header value: %s"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v8    # "c":C
    :cond_3
    return-void

    .line 138
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method addLenient(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/okhttp/internal/Headers$Builder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lio/grpc/okhttp/internal/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lio/grpc/okhttp/internal/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-object p0
.end method

.method public build()Lio/grpc/okhttp/internal/Headers;
    .locals 2

    .line 149
    new-instance v0, Lio/grpc/okhttp/internal/Headers;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/okhttp/internal/Headers;-><init>(Lio/grpc/okhttp/internal/Headers$Builder;Lio/grpc/okhttp/internal/Headers$1;)V

    return-object v0
.end method

.method public removeAll(Ljava/lang/String;)Lio/grpc/okhttp/internal/Headers$Builder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/grpc/okhttp/internal/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 108
    iget-object v1, p0, Lio/grpc/okhttp/internal/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lio/grpc/okhttp/internal/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 110
    iget-object v1, p0, Lio/grpc/okhttp/internal/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 111
    add-int/lit8 v0, v0, -0x2

    .line 107
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 114
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/okhttp/internal/Headers$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 122
    invoke-direct {p0, p1, p2}, Lio/grpc/okhttp/internal/Headers$Builder;->checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/internal/Headers$Builder;->removeAll(Ljava/lang/String;)Lio/grpc/okhttp/internal/Headers$Builder;

    .line 124
    invoke-virtual {p0, p1, p2}, Lio/grpc/okhttp/internal/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/okhttp/internal/Headers$Builder;

    .line 125
    return-object p0
.end method
