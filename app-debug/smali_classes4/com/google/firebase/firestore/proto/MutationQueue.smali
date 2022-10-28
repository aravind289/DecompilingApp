.class public final Lcom/google/firebase/firestore/proto/MutationQueue;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MutationQueue.java"

# interfaces
.implements Lcom/google/firebase/firestore/proto/MutationQueueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/proto/MutationQueue$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/firestore/proto/MutationQueue;",
        "Lcom/google/firebase/firestore/proto/MutationQueue$Builder;",
        ">;",
        "Lcom/google/firebase/firestore/proto/MutationQueueOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

.field public static final LAST_ACKNOWLEDGED_BATCH_ID_FIELD_NUMBER:I = 0x1

.field public static final LAST_STREAM_TOKEN_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/firestore/proto/MutationQueue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private lastAcknowledgedBatchId_:I

.field private lastStreamToken_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 372
    new-instance v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-direct {v0}, Lcom/google/firebase/firestore/proto/MutationQueue;-><init>()V

    .line 375
    .local v0, "defaultInstance":Lcom/google/firebase/firestore/proto/MutationQueue;
    sput-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    .line 376
    const-class v1, Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 378
    .end local v0    # "defaultInstance":Lcom/google/firebase/firestore/proto/MutationQueue;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/MutationQueue;->lastStreamToken_:Lcom/google/protobuf/ByteString;

    .line 21
    return-void
.end method

.method static synthetic access$000()Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/firestore/proto/MutationQueue;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/MutationQueue;
    .param p1, "x1"    # I

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/MutationQueue;->setLastAcknowledgedBatchId(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firebase/firestore/proto/MutationQueue;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/MutationQueue;

    .line 14
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/MutationQueue;->clearLastAcknowledgedBatchId()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firebase/firestore/proto/MutationQueue;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/MutationQueue;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/MutationQueue;->setLastStreamToken(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firebase/firestore/proto/MutationQueue;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/MutationQueue;

    .line 14
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/MutationQueue;->clearLastStreamToken()V

    return-void
.end method

.method private clearLastAcknowledgedBatchId()V
    .locals 1

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/MutationQueue;->lastAcknowledgedBatchId_:I

    .line 67
    return-void
.end method

.method private clearLastStreamToken()V
    .locals 1

    .line 114
    invoke-static {}, Lcom/google/firebase/firestore/proto/MutationQueue;->getDefaultInstance()Lcom/google/firebase/firestore/proto/MutationQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MutationQueue;->getLastStreamToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/MutationQueue;->lastStreamToken_:Lcom/google/protobuf/ByteString;

    .line 115
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1

    .line 381
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/firestore/proto/MutationQueue$Builder;
    .locals 1

    .line 192
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MutationQueue;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/firestore/proto/MutationQueue;)Lcom/google/firebase/firestore/proto/MutationQueue$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firebase/firestore/proto/MutationQueue;

    .line 195
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/proto/MutationQueue;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p0}, Lcom/google/firebase/firestore/proto/MutationQueue;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/firestore/proto/MutationQueue;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 133
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 120
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 127
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 145
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 152
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/firestore/proto/MutationQueue;",
            ">;"
        }
    .end annotation

    .line 387
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MutationQueue;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setLastAcknowledgedBatchId(I)V
    .locals 0
    .param p1, "value"    # I

    .line 52
    iput p1, p0, Lcom/google/firebase/firestore/proto/MutationQueue;->lastAcknowledgedBatchId_:I

    .line 53
    return-void
.end method

.method private setLastStreamToken(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 100
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/MutationQueue;->lastStreamToken_:Lcom/google/protobuf/ByteString;

    .line 101
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 365
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 362
    :pswitch_0
    return-object v2

    .line 359
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 344
    :pswitch_2
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->PARSER:Lcom/google/protobuf/Parser;

    .line 345
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/firestore/proto/MutationQueue;>;"
    if-nez v0, :cond_1

    .line 346
    const-class v1, Lcom/google/firebase/firestore/proto/MutationQueue;

    monitor-enter v1

    .line 347
    :try_start_0
    sget-object v2, Lcom/google/firebase/firestore/proto/MutationQueue;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 348
    if-nez v0, :cond_0

    .line 349
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 352
    sput-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->PARSER:Lcom/google/protobuf/Parser;

    .line 354
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 356
    :cond_1
    :goto_0
    return-object v0

    .line 341
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/firestore/proto/MutationQueue;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object v0

    .line 330
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "lastAcknowledgedBatchId_"

    aput-object v3, v0, v2

    const-string v2, "lastStreamToken_"

    aput-object v2, v0, v1

    .line 334
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0002\n"

    .line 337
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v2, v1, v0}, Lcom/google/firebase/firestore/proto/MutationQueue;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 327
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firebase/firestore/proto/MutationQueue$Builder;

    invoke-direct {v0, v2}, Lcom/google/firebase/firestore/proto/MutationQueue$Builder;-><init>(Lcom/google/firebase/firestore/proto/MutationQueue$1;)V

    return-object v0

    .line 324
    :pswitch_6
    new-instance v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-direct {v0}, Lcom/google/firebase/firestore/proto/MutationQueue;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLastAcknowledgedBatchId()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/google/firebase/firestore/proto/MutationQueue;->lastAcknowledgedBatchId_:I

    return v0
.end method

.method public getLastStreamToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MutationQueue;->lastStreamToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
