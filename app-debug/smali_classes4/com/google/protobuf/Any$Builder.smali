.class public final Lcom/google/protobuf/Any$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Any.java"

# interfaces
.implements Lcom/google/protobuf/AnyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Any;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/protobuf/Any;",
        "Lcom/google/protobuf/Any$Builder;",
        ">;",
        "Lcom/google/protobuf/AnyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 461
    invoke-static {}, Lcom/google/protobuf/Any;->access$000()Lcom/google/protobuf/Any;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 462
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Any$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/Any$1;

    .line 454
    invoke-direct {p0}, Lcom/google/protobuf/Any$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearTypeUrl()Lcom/google/protobuf/Any$Builder;
    .locals 1

    .line 602
    invoke-virtual {p0}, Lcom/google/protobuf/Any$Builder;->copyOnWrite()V

    .line 603
    iget-object v0, p0, Lcom/google/protobuf/Any$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Any;

    invoke-static {v0}, Lcom/google/protobuf/Any;->access$200(Lcom/google/protobuf/Any;)V

    .line 604
    return-object p0
.end method

.method public clearValue()Lcom/google/protobuf/Any$Builder;
    .locals 1

    .line 679
    invoke-virtual {p0}, Lcom/google/protobuf/Any$Builder;->copyOnWrite()V

    .line 680
    iget-object v0, p0, Lcom/google/protobuf/Any$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Any;

    invoke-static {v0}, Lcom/google/protobuf/Any;->access$500(Lcom/google/protobuf/Any;)V

    .line 681
    return-object p0
.end method

.method public getTypeUrl()Ljava/lang/String;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/google/protobuf/Any$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Any;

    invoke-virtual {v0}, Lcom/google/protobuf/Any;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/google/protobuf/Any$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Any;

    invoke-virtual {v0}, Lcom/google/protobuf/Any;->getTypeUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/google/protobuf/Any$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Any;

    invoke-virtual {v0}, Lcom/google/protobuf/Any;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setTypeUrl(Ljava/lang/String;)Lcom/google/protobuf/Any$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 567
    invoke-virtual {p0}, Lcom/google/protobuf/Any$Builder;->copyOnWrite()V

    .line 568
    iget-object v0, p0, Lcom/google/protobuf/Any$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Any;

    invoke-static {v0, p1}, Lcom/google/protobuf/Any;->access$100(Lcom/google/protobuf/Any;Ljava/lang/String;)V

    .line 569
    return-object p0
.end method

.method public setTypeUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Any$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 639
    invoke-virtual {p0}, Lcom/google/protobuf/Any$Builder;->copyOnWrite()V

    .line 640
    iget-object v0, p0, Lcom/google/protobuf/Any$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Any;

    invoke-static {v0, p1}, Lcom/google/protobuf/Any;->access$300(Lcom/google/protobuf/Any;Lcom/google/protobuf/ByteString;)V

    .line 641
    return-object p0
.end method

.method public setValue(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Any$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 666
    invoke-virtual {p0}, Lcom/google/protobuf/Any$Builder;->copyOnWrite()V

    .line 667
    iget-object v0, p0, Lcom/google/protobuf/Any$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Any;

    invoke-static {v0, p1}, Lcom/google/protobuf/Any;->access$400(Lcom/google/protobuf/Any;Lcom/google/protobuf/ByteString;)V

    .line 668
    return-object p0
.end method
