.class public final Lcom/google/firestore/v1/Cursor;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cursor.java"

# interfaces
.implements Lcom/google/firestore/v1/CursorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/Cursor$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/Cursor;",
        "Lcom/google/firestore/v1/Cursor$Builder;",
        ">;",
        "Lcom/google/firestore/v1/CursorOrBuilder;"
    }
.end annotation


# static fields
.field public static final BEFORE_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUES_FIELD_NUMBER:I = 0x1


# instance fields
.field private before_:Z

.field private values_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 596
    new-instance v0, Lcom/google/firestore/v1/Cursor;

    invoke-direct {v0}, Lcom/google/firestore/v1/Cursor;-><init>()V

    .line 599
    .local v0, "defaultInstance":Lcom/google/firestore/v1/Cursor;
    sput-object v0, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    .line 600
    const-class v1, Lcom/google/firestore/v1/Cursor;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 602
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/Cursor;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/firestore/v1/Cursor;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Cursor;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 20
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/Cursor;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/Cursor;ILcom/google/firestore/v1/Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Cursor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/Value;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/Cursor;->setValues(ILcom/google/firestore/v1/Value;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/Cursor;Lcom/google/firestore/v1/Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Cursor;
    .param p1, "x1"    # Lcom/google/firestore/v1/Value;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Cursor;->addValues(Lcom/google/firestore/v1/Value;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/Cursor;ILcom/google/firestore/v1/Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Cursor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/Value;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/Cursor;->addValues(ILcom/google/firestore/v1/Value;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/Cursor;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Cursor;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Cursor;->addAllValues(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Cursor;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/Cursor;->clearValues()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/Cursor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Cursor;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Cursor;->removeValues(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/Cursor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Cursor;
    .param p1, "x1"    # Z

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Cursor;->setBefore(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Cursor;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/Cursor;->clearBefore()V

    return-void
.end method

.method private addAllValues(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Value;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/Value;>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/Cursor;->ensureValuesIsMutable()V

    .line 152
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 154
    return-void
.end method

.method private addValues(ILcom/google/firestore/v1/Value;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 136
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    invoke-direct {p0}, Lcom/google/firestore/v1/Cursor;->ensureValuesIsMutable()V

    .line 138
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 139
    return-void
.end method

.method private addValues(Lcom/google/firestore/v1/Value;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    invoke-direct {p0}, Lcom/google/firestore/v1/Cursor;->ensureValuesIsMutable()V

    .line 123
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method private clearBefore()V
    .locals 1

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firestore/v1/Cursor;->before_:Z

    .line 220
    return-void
.end method

.method private clearValues()V
    .locals 1

    .line 165
    invoke-static {}, Lcom/google/firestore/v1/Cursor;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Cursor;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 166
    return-void
.end method

.method private ensureValuesIsMutable()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 90
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/firestore/v1/Value;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    nop

    .line 92
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firestore/v1/Cursor;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 94
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/Cursor;
    .locals 1

    .line 605
    sget-object v0, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/Cursor$Builder;
    .locals 1

    .line 297
    sget-object v0, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Cursor;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Cursor$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/Cursor;)Lcom/google/firestore/v1/Cursor$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/Cursor;

    .line 300
    sget-object v0, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/Cursor;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Cursor$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Cursor;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    sget-object v0, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/Cursor;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Cursor;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    sget-object v0, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/Cursor;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Cursor;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 238
    sget-object v0, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Cursor;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 245
    sget-object v0, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/Cursor;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    sget-object v0, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Cursor;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    sget-object v0, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Cursor;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    sget-object v0, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Cursor;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    sget-object v0, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/Cursor;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 225
    sget-object v0, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Cursor;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 232
    sget-object v0, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/Cursor;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 250
    sget-object v0, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Cursor;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 257
    sget-object v0, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Cursor;",
            ">;"
        }
    .end annotation

    .line 611
    sget-object v0, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Cursor;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeValues(I)V
    .locals 1
    .param p1, "index"    # I

    .line 177
    invoke-direct {p0}, Lcom/google/firestore/v1/Cursor;->ensureValuesIsMutable()V

    .line 178
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 179
    return-void
.end method

.method private setBefore(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 207
    iput-boolean p1, p0, Lcom/google/firestore/v1/Cursor;->before_:Z

    .line 208
    return-void
.end method

.method private setValues(ILcom/google/firestore/v1/Value;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 107
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    invoke-direct {p0}, Lcom/google/firestore/v1/Cursor;->ensureValuesIsMutable()V

    .line 109
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 545
    sget-object v0, Lcom/google/firestore/v1/Cursor$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 589
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 586
    :pswitch_0
    return-object v2

    .line 583
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 568
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/Cursor;->PARSER:Lcom/google/protobuf/Parser;

    .line 569
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/Cursor;>;"
    if-nez v0, :cond_1

    .line 570
    const-class v1, Lcom/google/firestore/v1/Cursor;

    monitor-enter v1

    .line 571
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/Cursor;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 572
    if-nez v0, :cond_0

    .line 573
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 576
    sput-object v0, Lcom/google/firestore/v1/Cursor;->PARSER:Lcom/google/protobuf/Parser;

    .line 578
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 580
    :cond_1
    :goto_0
    return-object v0

    .line 565
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/Cursor;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    return-object v0

    .line 553
    :pswitch_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "values_"

    aput-object v3, v0, v2

    const-class v2, Lcom/google/firestore/v1/Value;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "before_"

    aput-object v2, v0, v1

    .line 558
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u0007"

    .line 561
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/Cursor;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 550
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/Cursor$Builder;

    invoke-direct {v0, v2}, Lcom/google/firestore/v1/Cursor$Builder;-><init>(Lcom/google/firestore/v1/Cursor$1;)V

    return-object v0

    .line 547
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/Cursor;

    invoke-direct {v0}, Lcom/google/firestore/v1/Cursor;-><init>()V

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

.method public getBefore()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/google/firestore/v1/Cursor;->before_:Z

    return v0
.end method

.method public getValues(I)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p1, "index"    # I

    .line 73
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public getValuesCount()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getValuesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getValuesOrBuilder(I)Lcom/google/firestore/v1/ValueOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 86
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ValueOrBuilder;

    return-object v0
.end method

.method public getValuesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firestore/v1/ValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
