.class public final Lio/grpc/Status;
.super Ljava/lang/Object;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/Status$StatusMessageMarshaller;,
        Lio/grpc/Status$StatusCodeMarshaller;,
        Lio/grpc/Status$Code;
    }
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ABORTED:Lio/grpc/Status;

.field public static final ALREADY_EXISTS:Lio/grpc/Status;

.field public static final CANCELLED:Lio/grpc/Status;

.field static final CODE_KEY:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Lio/grpc/Status;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_LOSS:Lio/grpc/Status;

.field public static final DEADLINE_EXCEEDED:Lio/grpc/Status;

.field public static final FAILED_PRECONDITION:Lio/grpc/Status;

.field private static final FAIL_ON_EQUALS_FOR_TEST:Z

.field public static final INTERNAL:Lio/grpc/Status;

.field public static final INVALID_ARGUMENT:Lio/grpc/Status;

.field static final MESSAGE_KEY:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOT_FOUND:Lio/grpc/Status;

.field public static final OK:Lio/grpc/Status;

.field public static final OUT_OF_RANGE:Lio/grpc/Status;

.field public static final PERMISSION_DENIED:Lio/grpc/Status;

.field public static final RESOURCE_EXHAUSTED:Lio/grpc/Status;

.field private static final STATUS_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/Status;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATUS_MESSAGE_MARSHALLER:Lio/grpc/Metadata$TrustedAsciiMarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$TrustedAsciiMarshaller<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEST_EQUALS_FAILURE_PROPERTY:Ljava/lang/String; = "io.grpc.Status.failOnEqualsForTest"

.field public static final UNAUTHENTICATED:Lio/grpc/Status;

.field public static final UNAVAILABLE:Lio/grpc/Status;

.field public static final UNIMPLEMENTED:Lio/grpc/Status;

.field public static final UNKNOWN:Lio/grpc/Status;


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final code:Lio/grpc/Status$Code;

.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 54
    nop

    .line 234
    nop

    .line 235
    const-string v0, "io.grpc.Status.failOnEqualsForTest"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lio/grpc/Status;->FAIL_ON_EQUALS_FOR_TEST:Z

    .line 238
    invoke-static {}, Lio/grpc/Status;->buildStatusList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->STATUS_LIST:Ljava/util/List;

    .line 255
    sget-object v0, Lio/grpc/Status$Code;->OK:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->OK:Lio/grpc/Status;

    .line 257
    sget-object v0, Lio/grpc/Status$Code;->CANCELLED:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    .line 259
    sget-object v0, Lio/grpc/Status$Code;->UNKNOWN:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    .line 261
    sget-object v0, Lio/grpc/Status$Code;->INVALID_ARGUMENT:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->INVALID_ARGUMENT:Lio/grpc/Status;

    .line 263
    sget-object v0, Lio/grpc/Status$Code;->DEADLINE_EXCEEDED:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->DEADLINE_EXCEEDED:Lio/grpc/Status;

    .line 265
    sget-object v0, Lio/grpc/Status$Code;->NOT_FOUND:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->NOT_FOUND:Lio/grpc/Status;

    .line 267
    sget-object v0, Lio/grpc/Status$Code;->ALREADY_EXISTS:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->ALREADY_EXISTS:Lio/grpc/Status;

    .line 272
    sget-object v0, Lio/grpc/Status$Code;->PERMISSION_DENIED:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->PERMISSION_DENIED:Lio/grpc/Status;

    .line 274
    sget-object v0, Lio/grpc/Status$Code;->UNAUTHENTICATED:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->UNAUTHENTICATED:Lio/grpc/Status;

    .line 279
    sget-object v0, Lio/grpc/Status$Code;->RESOURCE_EXHAUSTED:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    .line 284
    sget-object v0, Lio/grpc/Status$Code;->FAILED_PRECONDITION:Lio/grpc/Status$Code;

    .line 285
    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->FAILED_PRECONDITION:Lio/grpc/Status;

    .line 290
    sget-object v0, Lio/grpc/Status$Code;->ABORTED:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->ABORTED:Lio/grpc/Status;

    .line 292
    sget-object v0, Lio/grpc/Status$Code;->OUT_OF_RANGE:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->OUT_OF_RANGE:Lio/grpc/Status;

    .line 294
    sget-object v0, Lio/grpc/Status$Code;->UNIMPLEMENTED:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->UNIMPLEMENTED:Lio/grpc/Status;

    .line 296
    sget-object v0, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 298
    sget-object v0, Lio/grpc/Status$Code;->UNAVAILABLE:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    .line 300
    sget-object v0, Lio/grpc/Status$Code;->DATA_LOSS:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->DATA_LOSS:Lio/grpc/Status;

    .line 356
    new-instance v0, Lio/grpc/Status$StatusCodeMarshaller;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/Status$StatusCodeMarshaller;-><init>(Lio/grpc/Status$1;)V

    .line 357
    const-string v2, "grpc-status"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;ZLio/grpc/Metadata$TrustedAsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->CODE_KEY:Lio/grpc/Metadata$Key;

    .line 381
    new-instance v0, Lio/grpc/Status$StatusMessageMarshaller;

    invoke-direct {v0, v1}, Lio/grpc/Status$StatusMessageMarshaller;-><init>(Lio/grpc/Status$1;)V

    sput-object v0, Lio/grpc/Status;->STATUS_MESSAGE_MARSHALLER:Lio/grpc/Metadata$TrustedAsciiMarshaller;

    .line 387
    nop

    .line 388
    const-string v1, "grpc-message"

    invoke-static {v1, v3, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;ZLio/grpc/Metadata$TrustedAsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/Status;->MESSAGE_KEY:Lio/grpc/Metadata$Key;

    .line 387
    return-void
.end method

.method private constructor <init>(Lio/grpc/Status$Code;)V
    .locals 1
    .param p1, "code"    # Lio/grpc/Status$Code;

    .line 444
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lio/grpc/Status;-><init>(Lio/grpc/Status$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 445
    return-void
.end method

.method private constructor <init>(Lio/grpc/Status$Code;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Lio/grpc/Status$Code;
    .param p2, "description"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "cause"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    const-string v0, "code"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Status$Code;

    iput-object v0, p0, Lio/grpc/Status;->code:Lio/grpc/Status$Code;

    .line 449
    iput-object p2, p0, Lio/grpc/Status;->description:Ljava/lang/String;

    .line 450
    iput-object p3, p0, Lio/grpc/Status;->cause:Ljava/lang/Throwable;

    .line 451
    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 56
    sget-object v0, Lio/grpc/Status;->STATUS_LIST:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400([B)Lio/grpc/Status;
    .locals 1
    .param p0, "x0"    # [B

    .line 56
    invoke-static {p0}, Lio/grpc/Status;->fromCodeValue([B)Lio/grpc/Status;

    move-result-object v0

    return-object v0
.end method

.method private static buildStatusList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/Status;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 242
    .local v0, "canonicalizer":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lio/grpc/Status;>;"
    invoke-static {}, Lio/grpc/Status$Code;->values()[Lio/grpc/Status$Code;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 243
    .local v4, "code":Lio/grpc/Status$Code;
    invoke-virtual {v4}, Lio/grpc/Status$Code;->value()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lio/grpc/Status;

    invoke-direct {v6, v4}, Lio/grpc/Status;-><init>(Lio/grpc/Status$Code;)V

    invoke-virtual {v0, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/Status;

    .line 244
    .local v5, "replaced":Lio/grpc/Status;
    if-nez v5, :cond_0

    .line 242
    .end local v4    # "code":Lio/grpc/Status$Code;
    .end local v5    # "replaced":Lio/grpc/Status;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 245
    .restart local v4    # "code":Lio/grpc/Status$Code;
    .restart local v5    # "replaced":Lio/grpc/Status;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Code value duplication between "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    invoke-virtual {v5}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/Status$Code;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " & "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lio/grpc/Status$Code;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    .end local v4    # "code":Lio/grpc/Status$Code;
    .end local v5    # "replaced":Lio/grpc/Status;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static formatThrowableMessage(Lio/grpc/Status;)Ljava/lang/String;
    .locals 2
    .param p0, "status"    # Lio/grpc/Status;

    .line 432
    iget-object v0, p0, Lio/grpc/Status;->description:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lio/grpc/Status;->code:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 435
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/grpc/Status;->code:Lio/grpc/Status$Code;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/Status;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromCode(Lio/grpc/Status$Code;)Lio/grpc/Status;
    .locals 1
    .param p0, "code"    # Lio/grpc/Status$Code;

    .line 350
    invoke-virtual {p0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    return-object v0
.end method

.method public static fromCodeValue(I)Lio/grpc/Status;
    .locals 3
    .param p0, "codeValue"    # I

    .line 306
    if-ltz p0, :cond_1

    sget-object v0, Lio/grpc/Status;->STATUS_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le p0, v1, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Status;

    return-object v0

    .line 307
    :cond_1
    :goto_0
    sget-object v0, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    return-object v0
.end method

.method private static fromCodeValue([B)Lio/grpc/Status;
    .locals 2
    .param p0, "asciiCodeValue"    # [B

    .line 314
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    .line 315
    sget-object v0, Lio/grpc/Status;->OK:Lio/grpc/Status;

    return-object v0

    .line 317
    :cond_0
    invoke-static {p0}, Lio/grpc/Status;->fromCodeValueSlow([B)Lio/grpc/Status;

    move-result-object v0

    return-object v0
.end method

.method private static fromCodeValueSlow([B)Lio/grpc/Status;
    .locals 6
    .param p0, "asciiCodeValue"    # [B

    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "index":I
    const/4 v1, 0x0

    .line 324
    .local v1, "codeValue":I
    array-length v2, p0

    const/16 v3, 0x39

    const/16 v4, 0x30

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 326
    :pswitch_0
    aget-byte v2, p0, v0

    if-lt v2, v4, :cond_2

    aget-byte v2, p0, v0

    if-le v2, v3, :cond_0

    .line 327
    goto :goto_0

    .line 329
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .local v2, "index":I
    aget-byte v0, p0, v0

    sub-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v1, v0

    move v0, v2

    .line 332
    .end local v2    # "index":I
    .restart local v0    # "index":I
    :pswitch_1
    aget-byte v2, p0, v0

    if-lt v2, v4, :cond_2

    aget-byte v2, p0, v0

    if-le v2, v3, :cond_1

    .line 333
    goto :goto_0

    .line 335
    :cond_1
    aget-byte v2, p0, v0

    sub-int/2addr v2, v4

    add-int/2addr v1, v2

    .line 336
    sget-object v2, Lio/grpc/Status;->STATUS_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 337
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/Status;

    return-object v2

    .line 343
    :cond_2
    :goto_0
    sget-object v2, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, p0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromThrowable(Ljava/lang/Throwable;)Lio/grpc/Status;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 398
    const-string v0, "t"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 399
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_2

    .line 400
    instance-of v1, v0, Lio/grpc/StatusException;

    if-eqz v1, :cond_0

    .line 401
    move-object v1, v0

    check-cast v1, Lio/grpc/StatusException;

    invoke-virtual {v1}, Lio/grpc/StatusException;->getStatus()Lio/grpc/Status;

    move-result-object v1

    return-object v1

    .line 402
    :cond_0
    instance-of v1, v0, Lio/grpc/StatusRuntimeException;

    if-eqz v1, :cond_1

    .line 403
    move-object v1, v0

    check-cast v1, Lio/grpc/StatusRuntimeException;

    invoke-virtual {v1}, Lio/grpc/StatusRuntimeException;->getStatus()Lio/grpc/Status;

    move-result-object v1

    return-object v1

    .line 405
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 408
    :cond_2
    sget-object v1, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    invoke-virtual {v1, p0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v1

    return-object v1
.end method

.method public static trailersFromThrowable(Ljava/lang/Throwable;)Lio/grpc/Metadata;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 419
    const-string v0, "t"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 420
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_2

    .line 421
    instance-of v1, v0, Lio/grpc/StatusException;

    if-eqz v1, :cond_0

    .line 422
    move-object v1, v0

    check-cast v1, Lio/grpc/StatusException;

    invoke-virtual {v1}, Lio/grpc/StatusException;->getTrailers()Lio/grpc/Metadata;

    move-result-object v1

    return-object v1

    .line 423
    :cond_0
    instance-of v1, v0, Lio/grpc/StatusRuntimeException;

    if-eqz v1, :cond_1

    .line 424
    move-object v1, v0

    check-cast v1, Lio/grpc/StatusRuntimeException;

    invoke-virtual {v1}, Lio/grpc/StatusRuntimeException;->getTrailers()Lio/grpc/Metadata;

    move-result-object v1

    return-object v1

    .line 426
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 428
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public asException()Lio/grpc/StatusException;
    .locals 1

    .line 543
    new-instance v0, Lio/grpc/StatusException;

    invoke-direct {v0, p0}, Lio/grpc/StatusException;-><init>(Lio/grpc/Status;)V

    return-object v0
.end method

.method public asException(Lio/grpc/Metadata;)Lio/grpc/StatusException;
    .locals 1
    .param p1, "trailers"    # Lio/grpc/Metadata;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 550
    new-instance v0, Lio/grpc/StatusException;

    invoke-direct {v0, p0, p1}, Lio/grpc/StatusException;-><init>(Lio/grpc/Status;Lio/grpc/Metadata;)V

    return-object v0
.end method

.method public asRuntimeException()Lio/grpc/StatusRuntimeException;
    .locals 1

    .line 526
    new-instance v0, Lio/grpc/StatusRuntimeException;

    invoke-direct {v0, p0}, Lio/grpc/StatusRuntimeException;-><init>(Lio/grpc/Status;)V

    return-object v0
.end method

.method public asRuntimeException(Lio/grpc/Metadata;)Lio/grpc/StatusRuntimeException;
    .locals 1
    .param p1, "trailers"    # Lio/grpc/Metadata;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 535
    new-instance v0, Lio/grpc/StatusRuntimeException;

    invoke-direct {v0, p0, p1}, Lio/grpc/StatusRuntimeException;-><init>(Lio/grpc/Status;Lio/grpc/Metadata;)V

    return-object v0
.end method

.method public augmentDescription(Ljava/lang/String;)Lio/grpc/Status;
    .locals 4
    .param p1, "additionalDetail"    # Ljava/lang/String;

    .line 481
    if-nez p1, :cond_0

    .line 482
    return-object p0

    .line 483
    :cond_0
    iget-object v0, p0, Lio/grpc/Status;->description:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 484
    new-instance v0, Lio/grpc/Status;

    iget-object v1, p0, Lio/grpc/Status;->code:Lio/grpc/Status$Code;

    iget-object v2, p0, Lio/grpc/Status;->cause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1, v2}, Lio/grpc/Status;-><init>(Lio/grpc/Status$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 486
    :cond_1
    new-instance v0, Lio/grpc/Status;

    iget-object v1, p0, Lio/grpc/Status;->code:Lio/grpc/Status$Code;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/grpc/Status;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/Status;->cause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/Status;-><init>(Lio/grpc/Status$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 661
    sget-boolean v0, Lio/grpc/Status;->FAIL_ON_EQUALS_FOR_TEST:Z

    if-nez v0, :cond_0

    .line 663
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 661
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Status.equals called; disable this by setting io.grpc.Status.failOnEqualsForTest"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 511
    iget-object v0, p0, Lio/grpc/Status;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getCode()Lio/grpc/Status$Code;
    .locals 1

    .line 494
    iget-object v0, p0, Lio/grpc/Status;->code:Lio/grpc/Status$Code;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 502
    iget-object v0, p0, Lio/grpc/Status;->description:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 673
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isOk()Z
    .locals 2

    .line 518
    sget-object v0, Lio/grpc/Status$Code;->OK:Lio/grpc/Status$Code;

    iget-object v1, p0, Lio/grpc/Status;->code:Lio/grpc/Status$Code;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 556
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/Status;->code:Lio/grpc/Status$Code;

    .line 557
    invoke-virtual {v1}, Lio/grpc/Status$Code;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/Status;->description:Ljava/lang/String;

    .line 558
    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 559
    iget-object v1, p0, Lio/grpc/Status;->cause:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/google/common/base/Throwables;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "cause"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 560
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 556
    return-object v0
.end method

.method public withCause(Ljava/lang/Throwable;)Lio/grpc/Status;
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 458
    iget-object v0, p0, Lio/grpc/Status;->cause:Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    return-object p0

    .line 461
    :cond_0
    new-instance v0, Lio/grpc/Status;

    iget-object v1, p0, Lio/grpc/Status;->code:Lio/grpc/Status$Code;

    iget-object v2, p0, Lio/grpc/Status;->description:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lio/grpc/Status;-><init>(Lio/grpc/Status$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public withDescription(Ljava/lang/String;)Lio/grpc/Status;
    .locals 3
    .param p1, "description"    # Ljava/lang/String;

    .line 469
    iget-object v0, p0, Lio/grpc/Status;->description:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    return-object p0

    .line 472
    :cond_0
    new-instance v0, Lio/grpc/Status;

    iget-object v1, p0, Lio/grpc/Status;->code:Lio/grpc/Status$Code;

    iget-object v2, p0, Lio/grpc/Status;->cause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1, v2}, Lio/grpc/Status;-><init>(Lio/grpc/Status$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
