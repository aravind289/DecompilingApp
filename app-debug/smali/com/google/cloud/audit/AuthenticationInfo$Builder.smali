.class public final Lcom/google/cloud/audit/AuthenticationInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AuthenticationInfo.java"

# interfaces
.implements Lcom/google/cloud/audit/AuthenticationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cloud/audit/AuthenticationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/cloud/audit/AuthenticationInfo;",
        "Lcom/google/cloud/audit/AuthenticationInfo$Builder;",
        ">;",
        "Lcom/google/cloud/audit/AuthenticationInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 183
    invoke-static {}, Lcom/google/cloud/audit/AuthenticationInfo;->access$000()Lcom/google/cloud/audit/AuthenticationInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 184
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/cloud/audit/AuthenticationInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/cloud/audit/AuthenticationInfo$1;

    .line 176
    invoke-direct {p0}, Lcom/google/cloud/audit/AuthenticationInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPrincipalEmail()Lcom/google/cloud/audit/AuthenticationInfo$Builder;
    .locals 1

    .line 236
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuthenticationInfo$Builder;->copyOnWrite()V

    .line 237
    iget-object v0, p0, Lcom/google/cloud/audit/AuthenticationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuthenticationInfo;

    invoke-static {v0}, Lcom/google/cloud/audit/AuthenticationInfo;->access$200(Lcom/google/cloud/audit/AuthenticationInfo;)V

    .line 238
    return-object p0
.end method

.method public getPrincipalEmail()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/google/cloud/audit/AuthenticationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuthenticationInfo;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuthenticationInfo;->getPrincipalEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrincipalEmailBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/google/cloud/audit/AuthenticationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuthenticationInfo;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuthenticationInfo;->getPrincipalEmailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setPrincipalEmail(Ljava/lang/String;)Lcom/google/cloud/audit/AuthenticationInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 223
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuthenticationInfo$Builder;->copyOnWrite()V

    .line 224
    iget-object v0, p0, Lcom/google/cloud/audit/AuthenticationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuthenticationInfo;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuthenticationInfo;->access$100(Lcom/google/cloud/audit/AuthenticationInfo;Ljava/lang/String;)V

    .line 225
    return-object p0
.end method

.method public setPrincipalEmailBytes(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/audit/AuthenticationInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 251
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuthenticationInfo$Builder;->copyOnWrite()V

    .line 252
    iget-object v0, p0, Lcom/google/cloud/audit/AuthenticationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuthenticationInfo;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuthenticationInfo;->access$300(Lcom/google/cloud/audit/AuthenticationInfo;Lcom/google/protobuf/ByteString;)V

    .line 253
    return-object p0
.end method
