.class public abstract Lcom/google/protobuf/GeneratedMessageLite;
.super Lcom/google/protobuf/AbstractMessageLite;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;,
        Lcom/google/protobuf/GeneratedMessageLite$SerializedForm;,
        Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;,
        Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;,
        Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,
        Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;,
        Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;,
        Lcom/google/protobuf/GeneratedMessageLite$Builder;,
        Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/protobuf/AbstractMessageLite<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static defaultInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected memoizedSerializedSize:I

.field protected unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 290
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessageLite;-><init>()V

    .line 66
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/protobuf/ExtensionLite;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/ExtensionLite;

    .line 60
    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageLite;->checkIsLite(Lcom/google/protobuf/ExtensionLite;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/protobuf/GeneratedMessageLite;[BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessageLite;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 60
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;[BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method private static checkIsLite(Lcom/google/protobuf/ExtensionLite;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<",
            "TMessageType;TBuilderType;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/ExtensionLite<",
            "TMessageType;TT;>;)",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;TT;>;"
        }
    .end annotation

    .line 1407
    .local p0, "extension":Lcom/google/protobuf/ExtensionLite;, "Lcom/google/protobuf/ExtensionLite<TMessageType;TT;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/ExtensionLite;->isLite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1411
    move-object v0, p0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-object v0

    .line 1408
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected a lite extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkMessageInitialized(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1610
    .local p0, "message":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1611
    :cond_0
    nop

    .line 1612
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newUninitializedMessageException()Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 1613
    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 1614
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1616
    :cond_1
    :goto_0
    return-object p0
.end method

.method protected static emptyBooleanList()Lcom/google/protobuf/Internal$BooleanList;
    .locals 1

    .line 1480
    invoke-static {}, Lcom/google/protobuf/BooleanArrayList;->emptyList()Lcom/google/protobuf/BooleanArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyDoubleList()Lcom/google/protobuf/Internal$DoubleList;
    .locals 1

    .line 1470
    invoke-static {}, Lcom/google/protobuf/DoubleArrayList;->emptyList()Lcom/google/protobuf/DoubleArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyFloatList()Lcom/google/protobuf/Internal$FloatList;
    .locals 1

    .line 1460
    invoke-static {}, Lcom/google/protobuf/FloatArrayList;->emptyList()Lcom/google/protobuf/FloatArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyIntList()Lcom/google/protobuf/Internal$IntList;
    .locals 1

    .line 1440
    invoke-static {}, Lcom/google/protobuf/IntArrayList;->emptyList()Lcom/google/protobuf/IntArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyLongList()Lcom/google/protobuf/Internal$LongList;
    .locals 1

    .line 1450
    invoke-static {}, Lcom/google/protobuf/LongArrayList;->emptyList()Lcom/google/protobuf/LongArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 1490
    invoke-static {}, Lcom/google/protobuf/ProtobufArrayList;->emptyList()Lcom/google/protobuf/ProtobufArrayList;

    move-result-object v0

    return-object v0
.end method

.method private final ensureUnknownFieldsInitialized()V
    .locals 2

    .line 141
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 142
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 144
    :cond_0
    return-void
.end method

.method static getDefaultInstance(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 295
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 296
    .local v0, "result":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    if-nez v0, :cond_0

    .line 300
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    nop

    .line 304
    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    goto :goto_0

    .line 301
    :catch_0
    move-exception v1

    .line 302
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Class initialization cannot fail."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 306
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 309
    invoke-static {p0}, Lcom/google/protobuf/UnsafeUtil;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_1

    .line 314
    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 312
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 316
    :cond_2
    :goto_1
    return-object v0
.end method

.method static varargs getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Class;

    .line 1156
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1157
    :catch_0
    move-exception v0

    .line 1158
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated message class \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1159
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" missing method \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static varargs invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 1167
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1171
    :catch_0
    move-exception v0

    .line 1172
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 1173
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    .line 1175
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_0

    .line 1176
    move-object v2, v1

    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 1178
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unexpected exception thrown by generated accessor method."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1174
    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 1168
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 1169
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static final isInitialized(Lcom/google/protobuf/GeneratedMessageLite;Z)Z
    .locals 4
    .param p1, "shouldMemoize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 1421
    .local p0, "message":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 1422
    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 1423
    .local v0, "memoizedIsInitialized":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1424
    return v1

    .line 1426
    :cond_0
    if-nez v0, :cond_1

    .line 1427
    const/4 v1, 0x0

    return v1

    .line 1429
    :cond_1
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/Schema;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v1

    .line 1430
    .local v1, "isInitialized":Z
    if-eqz p1, :cond_3

    .line 1432
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->SET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    if-eqz v1, :cond_2

    move-object v3, p0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 1433
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    :cond_3
    return v1
.end method

.method protected static mutableCopy(Lcom/google/protobuf/Internal$BooleanList;)Lcom/google/protobuf/Internal$BooleanList;
    .locals 2
    .param p0, "list"    # Lcom/google/protobuf/Internal$BooleanList;

    .line 1484
    invoke-interface {p0}, Lcom/google/protobuf/Internal$BooleanList;->size()I

    move-result v0

    .line 1485
    .local v0, "size":I
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    :goto_0
    invoke-interface {p0, v1}, Lcom/google/protobuf/Internal$BooleanList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$BooleanList;

    move-result-object v1

    return-object v1
.end method

.method protected static mutableCopy(Lcom/google/protobuf/Internal$DoubleList;)Lcom/google/protobuf/Internal$DoubleList;
    .locals 2
    .param p0, "list"    # Lcom/google/protobuf/Internal$DoubleList;

    .line 1474
    invoke-interface {p0}, Lcom/google/protobuf/Internal$DoubleList;->size()I

    move-result v0

    .line 1475
    .local v0, "size":I
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    :goto_0
    invoke-interface {p0, v1}, Lcom/google/protobuf/Internal$DoubleList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$DoubleList;

    move-result-object v1

    return-object v1
.end method

.method protected static mutableCopy(Lcom/google/protobuf/Internal$FloatList;)Lcom/google/protobuf/Internal$FloatList;
    .locals 2
    .param p0, "list"    # Lcom/google/protobuf/Internal$FloatList;

    .line 1464
    invoke-interface {p0}, Lcom/google/protobuf/Internal$FloatList;->size()I

    move-result v0

    .line 1465
    .local v0, "size":I
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    :goto_0
    invoke-interface {p0, v1}, Lcom/google/protobuf/Internal$FloatList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$FloatList;

    move-result-object v1

    return-object v1
.end method

.method protected static mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;
    .locals 2
    .param p0, "list"    # Lcom/google/protobuf/Internal$IntList;

    .line 1444
    invoke-interface {p0}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v0

    .line 1445
    .local v0, "size":I
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    :goto_0
    invoke-interface {p0, v1}, Lcom/google/protobuf/Internal$IntList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    return-object v1
.end method

.method protected static mutableCopy(Lcom/google/protobuf/Internal$LongList;)Lcom/google/protobuf/Internal$LongList;
    .locals 2
    .param p0, "list"    # Lcom/google/protobuf/Internal$LongList;

    .line 1454
    invoke-interface {p0}, Lcom/google/protobuf/Internal$LongList;->size()I

    move-result v0

    .line 1455
    .local v0, "size":I
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    :goto_0
    invoke-interface {p0, v1}, Lcom/google/protobuf/Internal$LongList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$LongList;

    move-result-object v1

    return-object v1
.end method

.method protected static mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "TE;>;)",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 1494
    .local p0, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<TE;>;"
    invoke-interface {p0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    .line 1495
    .local v0, "size":I
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    :goto_0
    invoke-interface {p0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    return-object v1
.end method

.method protected static newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "defaultInstance"    # Lcom/google/protobuf/MessageLite;
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "objects"    # [Ljava/lang/Object;

    .line 326
    new-instance v0, Lcom/google/protobuf/RawMessageInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/RawMessageInfo;-><init>(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newRepeatedGeneratedExtension(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;ZLjava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 9
    .param p1, "messageDefaultInstance"    # Lcom/google/protobuf/MessageLite;
    .param p3, "number"    # I
    .param p4, "type"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p5, "isPacked"    # Z
    .param p6, "singularType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lcom/google/protobuf/MessageLite;",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "Z",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1077
    .local p0, "containingTypeDefaultInstance":Lcom/google/protobuf/MessageLite;, "TContainingType;"
    .local p2, "enumTypeMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 1078
    .local v6, "emptyList":Ljava/lang/Object;, "TType;"
    new-instance v7, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v8, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    const/4 v4, 0x1

    move-object v0, v8

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;ZZ)V

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, v8

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Class;)V

    return-object v7
.end method

.method public static newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 8
    .param p2, "messageDefaultInstance"    # Lcom/google/protobuf/MessageLite;
    .param p4, "number"    # I
    .param p5, "type"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p6, "singularType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lcom/google/protobuf/MessageLite;",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1057
    .local p0, "containingTypeDefaultInstance":Lcom/google/protobuf/MessageLite;, "TContainingType;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TType;"
    .local p3, "enumTypeMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    new-instance v6, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v7, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;ZZ)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Class;)V

    return-object v6
.end method

.method protected static parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1711
    .local p0, "defaultInstance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1713
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 1712
    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1711
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1720
    .local p0, "defaultInstance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1721
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1720
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/ByteString;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1636
    .local p0, "defaultInstance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1637
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1636
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "data"    # Lcom/google/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1644
    .local p0, "defaultInstance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/CodedInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1698
    .local p0, "defaultInstance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1705
    .local p0, "defaultInstance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1680
    .local p0, "defaultInstance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1683
    invoke-static {p1}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 1684
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 1681
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1680
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1691
    .local p0, "defaultInstance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1692
    invoke-static {p1}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1691
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1630
    .local p0, "defaultInstance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/nio/ByteBuffer;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1623
    .local p0, "defaultInstance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1624
    invoke-static {p1}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1623
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1665
    .local p0, "defaultInstance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    array-length v0, p1

    .line 1666
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 1665
    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;[BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 2
    .param p1, "data"    # [B
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1673
    .local p0, "defaultInstance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    array-length v0, p1

    .line 1674
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;[BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1673
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method private static parsePartialDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 6
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1729
    .local p0, "defaultInstance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1730
    .local v0, "firstByte":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1731
    const/4 v1, 0x0

    return-object v1

    .line 1733
    :cond_0
    invoke-static {v0, p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 1741
    .local v0, "size":I
    nop

    .line 1742
    new-instance v1, Lcom/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v1, p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1743
    .local v1, "limitedInput":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object v2

    .line 1744
    .local v2, "codedInput":Lcom/google/protobuf/CodedInputStream;
    invoke-static {p0, v2, p2}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    .line 1746
    .local v3, "message":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1749
    nop

    .line 1750
    return-object v3

    .line 1747
    :catch_0
    move-exception v4

    .line 1748
    .local v4, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v4, v3}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5

    .line 1739
    .end local v0    # "size":I
    .end local v1    # "limitedInput":Ljava/io/InputStream;
    .end local v2    # "codedInput":Lcom/google/protobuf/CodedInputStream;
    .end local v3    # "message":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    .end local v4    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catch_1
    move-exception v0

    .line 1740
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 1734
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1735
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->getThrownFromInputStream()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1736
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    move-object v0, v1

    .line 1738
    :cond_1
    throw v0
.end method

.method private static parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 4
    .param p1, "data"    # Lcom/google/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1652
    .local p0, "defaultInstance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->newCodedInput()Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 1653
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    invoke-static {p0, v0, p2}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    .line 1655
    .local v1, "message":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1658
    nop

    .line 1659
    return-object v1

    .line 1656
    :catch_0
    move-exception v2

    .line 1657
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v2, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
.end method

.method protected static parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/CodedInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1599
    .local p0, "defaultInstance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method static parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1537
    .local p0, "instance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 1541
    .local v0, "result":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/Schema;

    move-result-object v1

    .line 1542
    .local v1, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    invoke-static {p1}, Lcom/google/protobuf/CodedInputStreamReader;->forCodedInput(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/CodedInputStreamReader;

    move-result-object v2

    invoke-interface {v1, v0, v2, p2}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1543
    invoke-interface {v1, v0}, Lcom/google/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1561
    .end local v1    # "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    nop

    .line 1562
    return-object v0

    .line 1556
    :catch_0
    move-exception v1

    .line 1557
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    if-eqz v2, :cond_0

    .line 1558
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    throw v2

    .line 1560
    :cond_0
    throw v1

    .line 1551
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 1552
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    if-eqz v2, :cond_1

    .line 1553
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    throw v2

    .line 1555
    :cond_1
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v2, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {v2, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1549
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 1550
    .local v1, "e":Lcom/google/protobuf/UninitializedMessageException;
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1544
    .end local v1    # "e":Lcom/google/protobuf/UninitializedMessageException;
    :catch_3
    move-exception v1

    .line 1545
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getThrownFromInputStream()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1546
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v2, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    move-object v1, v2

    .line 1548
    :cond_2
    invoke-virtual {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method private static parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;[BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 8
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[BII",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1570
    .local p0, "instance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 1572
    .local v0, "result":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/Schema;

    move-result-object v1

    move-object v7, v1

    .line 1573
    .local v7, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    add-int v5, p2, p3

    new-instance v6, Lcom/google/protobuf/ArrayDecoders$Registers;

    invoke-direct {v6, p4}, Lcom/google/protobuf/ArrayDecoders$Registers;-><init>(Lcom/google/protobuf/ExtensionRegistryLite;)V

    move-object v1, v7

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    invoke-interface/range {v1 .. v6}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;[BIILcom/google/protobuf/ArrayDecoders$Registers;)V

    .line 1575
    invoke-interface {v7, v0}, Lcom/google/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 1576
    iget v1, v0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    if-nez v1, :cond_0

    .line 1593
    .end local v7    # "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    nop

    .line 1594
    return-object v0

    .line 1577
    .restart local v7    # "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .end local v0    # "result":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    .end local p0    # "instance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    .end local p1    # "input":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1591
    .end local v7    # "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    .restart local v0    # "result":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    .restart local p0    # "instance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    .restart local p1    # "input":[B
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    .restart local p4    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :catch_0
    move-exception v1

    .line 1592
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1586
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 1587
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    if-eqz v2, :cond_1

    .line 1588
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    throw v2

    .line 1590
    :cond_1
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v2, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {v2, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1584
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 1585
    .local v1, "e":Lcom/google/protobuf/UninitializedMessageException;
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1579
    .end local v1    # "e":Lcom/google/protobuf/UninitializedMessageException;
    :catch_3
    move-exception v1

    .line 1580
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getThrownFromInputStream()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1581
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v2, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    move-object v1, v2

    .line 1583
    :cond_2
    invoke-virtual {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method protected static registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 321
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "defaultInstance":Lcom/google/protobuf/GeneratedMessageLite;, "TT;"
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    return-void
.end method


# virtual methods
.method buildMessageInfo()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 287
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 182
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;

    return-object v0
.end method

.method protected final createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/protobuf/GeneratedMessageLite<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
            "TMessageType;TBuilderType;>;>(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 189
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    .local p1, "prototype":Lcom/google/protobuf/GeneratedMessageLite;, "TMessageType;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 1
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 257
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;

    .line 252
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 120
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    if-ne p0, p1, :cond_0

    .line 121
    const/4 v0, 0x1

    return v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 125
    return v0

    .line 128
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 129
    return v0

    .line 132
    :cond_2
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/Schema;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-interface {v0, p0, v1}, Lcom/google/protobuf/Schema;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 60
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method getMemoizedSerializedSize()I
    .locals 1

    .line 262
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "TMessageType;>;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 2

    .line 279
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 280
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/protobuf/Schema;->getSerializedSize(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    .line 282
    :cond_0
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 109
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 110
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    return v0

    .line 112
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/protobuf/Schema;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    .line 113
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 194
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite;->isInitialized(Lcom/google/protobuf/GeneratedMessageLite;Z)Z

    move-result v0

    return v0
.end method

.method protected makeImmutable()V
    .locals 1

    .line 175
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method protected mergeLengthDelimitedField(ILcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/ByteString;

    .line 169
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 170
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->mergeLengthDelimitedField(ILcom/google/protobuf/ByteString;)Lcom/google/protobuf/UnknownFieldSetLite;

    .line 171
    return-void
.end method

.method protected final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSetLite;)V
    .locals 1
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSetLite;

    .line 335
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-static {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->mutableCopyOf(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/UnknownFieldSetLite;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 336
    return-void
.end method

.method protected mergeVarintField(II)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # I

    .line 163
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 164
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSetLite;

    .line 165
    return-void
.end method

.method public final newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 60
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z
    .locals 2
    .param p1, "tag"    # I
    .param p2, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 154
    const/4 v0, 0x0

    return v0

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 158
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->mergeFieldFrom(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v0

    return v0
.end method

.method setMemoizedSerializedSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 267
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iput p1, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    .line 268
    return-void
.end method

.method public final toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 200
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 201
    .local v0, "builder":Lcom/google/protobuf/GeneratedMessageLite$Builder;, "TBuilderType;"
    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 202
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 60
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 103
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/protobuf/MessageLiteToString;->toString(Lcom/google/protobuf/MessageLite;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    .line 273
    invoke-virtual {v0, p0}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/Schema;

    move-result-object v0

    .line 274
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStreamWriter;->forCodedOutput(Lcom/google/protobuf/CodedOutputStream;)Lcom/google/protobuf/CodedOutputStreamWriter;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/google/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 275
    return-void
.end method
