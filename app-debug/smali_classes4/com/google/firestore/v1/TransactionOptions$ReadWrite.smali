.class public final Lcom/google/firestore/v1/TransactionOptions$ReadWrite;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TransactionOptions.java"

# interfaces
.implements Lcom/google/firestore/v1/TransactionOptions$ReadWriteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/TransactionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReadWrite"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/TransactionOptions$ReadWrite;",
        "Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;",
        ">;",
        "Lcom/google/firestore/v1/TransactionOptions$ReadWriteOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/TransactionOptions$ReadWrite;",
            ">;"
        }
    .end annotation
.end field

.field public static final RETRY_TRANSACTION_FIELD_NUMBER:I = 0x1


# instance fields
.field private retryTransaction_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 282
    new-instance v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-direct {v0}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;-><init>()V

    .line 285
    .local v0, "defaultInstance":Lcom/google/firestore/v1/TransactionOptions$ReadWrite;
    sput-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    .line 286
    const-class v1, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 288
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/TransactionOptions$ReadWrite;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 47
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->retryTransaction_:Lcom/google/protobuf/ByteString;

    .line 48
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/TransactionOptions$ReadWrite;
    .locals 1

    .line 41
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/TransactionOptions$ReadWrite;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/TransactionOptions$ReadWrite;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 41
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->setRetryTransaction(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/TransactionOptions$ReadWrite;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    .line 41
    invoke-direct {p0}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->clearRetryTransaction()V

    return-void
.end method

.method private clearRetryTransaction()V
    .locals 1

    .line 85
    invoke-static {}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->getDefaultInstance()Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->getRetryTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->retryTransaction_:Lcom/google/protobuf/ByteString;

    .line 86
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/TransactionOptions$ReadWrite;
    .locals 1

    .line 291
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;
    .locals 1

    .line 163
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/TransactionOptions$ReadWrite;)Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    .line 166
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/TransactionOptions$ReadWrite;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/TransactionOptions$ReadWrite;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/TransactionOptions$ReadWrite;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/TransactionOptions$ReadWrite;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 111
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/TransactionOptions$ReadWrite;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/TransactionOptions$ReadWrite;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/TransactionOptions$ReadWrite;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/TransactionOptions$ReadWrite;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/TransactionOptions$ReadWrite;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/TransactionOptions$ReadWrite;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/TransactionOptions$ReadWrite;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 116
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/TransactionOptions$ReadWrite;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 123
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/TransactionOptions$ReadWrite;",
            ">;"
        }
    .end annotation

    .line 297
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setRetryTransaction(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 74
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->retryTransaction_:Lcom/google/protobuf/ByteString;

    .line 75
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 275
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 272
    :pswitch_0
    return-object v2

    .line 269
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 254
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->PARSER:Lcom/google/protobuf/Parser;

    .line 255
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/TransactionOptions$ReadWrite;>;"
    if-nez v0, :cond_1

    .line 256
    const-class v1, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    monitor-enter v1

    .line 257
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 258
    if-nez v0, :cond_0

    .line 259
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 262
    sput-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->PARSER:Lcom/google/protobuf/Parser;

    .line 264
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 266
    :cond_1
    :goto_0
    return-object v0

    .line 251
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/TransactionOptions$ReadWrite;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    return-object v0

    .line 242
    :pswitch_4
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "retryTransaction_"

    aput-object v2, v0, v1

    .line 245
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n"

    .line 247
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 239
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;

    invoke-direct {v0, v2}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;-><init>(Lcom/google/firestore/v1/TransactionOptions$1;)V

    return-object v0

    .line 236
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-direct {v0}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;-><init>()V

    return-object v0

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

.method public getRetryTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->retryTransaction_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
