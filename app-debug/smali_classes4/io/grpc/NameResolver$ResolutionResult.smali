.class public final Lio/grpc/NameResolver$ResolutionResult;
.super Ljava/lang/Object;
.source "NameResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/NameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResolutionResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/NameResolver$ResolutionResult$Builder;
    }
.end annotation


# instance fields
.field private final addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final attributes:Lio/grpc/Attributes;

.field private final serviceConfig:Lio/grpc/NameResolver$ConfigOrError;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lio/grpc/Attributes;Lio/grpc/NameResolver$ConfigOrError;)V
    .locals 1
    .param p2, "attributes"    # Lio/grpc/Attributes;
    .param p3, "serviceConfig"    # Lio/grpc/NameResolver$ConfigOrError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;",
            "Lio/grpc/Attributes;",
            "Lio/grpc/NameResolver$ConfigOrError;",
            ")V"
        }
    .end annotation

    .line 544
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/NameResolver$ResolutionResult;->addresses:Ljava/util/List;

    .line 546
    const-string v0, "attributes"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Attributes;

    iput-object v0, p0, Lio/grpc/NameResolver$ResolutionResult;->attributes:Lio/grpc/Attributes;

    .line 547
    iput-object p3, p0, Lio/grpc/NameResolver$ResolutionResult;->serviceConfig:Lio/grpc/NameResolver$ConfigOrError;

    .line 548
    return-void
.end method

.method public static newBuilder()Lio/grpc/NameResolver$ResolutionResult$Builder;
    .locals 1

    .line 556
    new-instance v0, Lio/grpc/NameResolver$ResolutionResult$Builder;

    invoke-direct {v0}, Lio/grpc/NameResolver$ResolutionResult$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 615
    instance-of v0, p1, Lio/grpc/NameResolver$ResolutionResult;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 616
    return v1

    .line 618
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/grpc/NameResolver$ResolutionResult;

    .line 619
    .local v0, "that":Lio/grpc/NameResolver$ResolutionResult;
    iget-object v2, p0, Lio/grpc/NameResolver$ResolutionResult;->addresses:Ljava/util/List;

    iget-object v3, v0, Lio/grpc/NameResolver$ResolutionResult;->addresses:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/grpc/NameResolver$ResolutionResult;->attributes:Lio/grpc/Attributes;

    iget-object v3, v0, Lio/grpc/NameResolver$ResolutionResult;->attributes:Lio/grpc/Attributes;

    .line 620
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/grpc/NameResolver$ResolutionResult;->serviceConfig:Lio/grpc/NameResolver$ConfigOrError;

    iget-object v3, v0, Lio/grpc/NameResolver$ResolutionResult;->serviceConfig:Lio/grpc/NameResolver$ConfigOrError;

    .line 621
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 619
    :goto_0
    return v1
.end method

.method public getAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation

    .line 577
    iget-object v0, p0, Lio/grpc/NameResolver$ResolutionResult;->addresses:Ljava/util/List;

    return-object v0
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 588
    iget-object v0, p0, Lio/grpc/NameResolver$ResolutionResult;->attributes:Lio/grpc/Attributes;

    return-object v0
.end method

.method public getServiceConfig()Lio/grpc/NameResolver$ConfigOrError;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 598
    iget-object v0, p0, Lio/grpc/NameResolver$ResolutionResult;->serviceConfig:Lio/grpc/NameResolver$ConfigOrError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 629
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lio/grpc/NameResolver$ResolutionResult;->addresses:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/NameResolver$ResolutionResult;->attributes:Lio/grpc/Attributes;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/NameResolver$ResolutionResult;->serviceConfig:Lio/grpc/NameResolver$ConfigOrError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBuilder()Lio/grpc/NameResolver$ResolutionResult$Builder;
    .locals 2

    .line 565
    invoke-static {}, Lio/grpc/NameResolver$ResolutionResult;->newBuilder()Lio/grpc/NameResolver$ResolutionResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/NameResolver$ResolutionResult;->addresses:Ljava/util/List;

    .line 566
    invoke-virtual {v0, v1}, Lio/grpc/NameResolver$ResolutionResult$Builder;->setAddresses(Ljava/util/List;)Lio/grpc/NameResolver$ResolutionResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/NameResolver$ResolutionResult;->attributes:Lio/grpc/Attributes;

    .line 567
    invoke-virtual {v0, v1}, Lio/grpc/NameResolver$ResolutionResult$Builder;->setAttributes(Lio/grpc/Attributes;)Lio/grpc/NameResolver$ResolutionResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/NameResolver$ResolutionResult;->serviceConfig:Lio/grpc/NameResolver$ConfigOrError;

    .line 568
    invoke-virtual {v0, v1}, Lio/grpc/NameResolver$ResolutionResult$Builder;->setServiceConfig(Lio/grpc/NameResolver$ConfigOrError;)Lio/grpc/NameResolver$ResolutionResult$Builder;

    move-result-object v0

    .line 565
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 603
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/NameResolver$ResolutionResult;->addresses:Ljava/util/List;

    .line 604
    const-string v2, "addresses"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/NameResolver$ResolutionResult;->attributes:Lio/grpc/Attributes;

    .line 605
    const-string v2, "attributes"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/NameResolver$ResolutionResult;->serviceConfig:Lio/grpc/NameResolver$ConfigOrError;

    .line 606
    const-string v2, "serviceConfig"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 607
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    return-object v0
.end method
