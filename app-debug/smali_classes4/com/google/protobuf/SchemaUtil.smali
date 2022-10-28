.class final Lcom/google/protobuf/SchemaUtil;
.super Ljava/lang/Object;
.source "SchemaUtil.java"


# annotations
.annotation runtime Lcom/google/protobuf/CheckReturnValue;
.end annotation


# static fields
.field private static final DEFAULT_LOOK_UP_START_NUMBER:I = 0x28

.field private static final GENERATED_MESSAGE_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final PROTO2_UNKNOWN_FIELD_SET_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field

.field private static final PROTO3_UNKNOWN_FIELD_SET_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field

.field private static final UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->getGeneratedMessageClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 47
    nop

    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/protobuf/SchemaUtil;->getUnknownFieldSetSchema(Z)Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/SchemaUtil;->PROTO2_UNKNOWN_FIELD_SET_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;

    .line 49
    nop

    .line 50
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/protobuf/SchemaUtil;->getUnknownFieldSetSchema(Z)Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/SchemaUtil;->PROTO3_UNKNOWN_FIELD_SET_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;

    .line 51
    new-instance v0, Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    invoke-direct {v0}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;-><init>()V

    sput-object v0, Lcom/google/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static computeSizeBoolList(ILjava/util/List;Z)I
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 627
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 628
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 629
    const/4 v1, 0x0

    return v1

    .line 631
    :cond_0
    if-eqz p2, :cond_1

    .line 633
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    .line 634
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 633
    return v1

    .line 636
    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    mul-int v1, v1, v0

    return v1
.end method

.method static computeSizeBoolListNoTag(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 623
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method static computeSizeByteStringList(ILjava/util/List;)I
    .locals 4
    .param p0, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;)I"
        }
    .end annotation

    .line 712
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/ByteString;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 713
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 714
    const/4 v1, 0x0

    return v1

    .line 716
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    mul-int v1, v1, v0

    .line 717
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 718
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 717
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 720
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method static computeSizeEnumList(ILjava/util/List;Z)I
    .locals 4
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 462
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 463
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 464
    const/4 v1, 0x0

    return v1

    .line 466
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v1

    .line 468
    .local v1, "size":I
    if-eqz p2, :cond_1

    .line 469
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 470
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 469
    return v2

    .line 472
    :cond_1
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int v2, v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method static computeSizeEnumListNoTag(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 441
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 442
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 443
    const/4 v1, 0x0

    return v1

    .line 446
    :cond_0
    const/4 v1, 0x0

    .line 448
    .local v1, "size":I
    instance-of v2, p0, Lcom/google/protobuf/IntArrayList;

    if-eqz v2, :cond_2

    .line 449
    move-object v2, p0

    check-cast v2, Lcom/google/protobuf/IntArrayList;

    .line 450
    .local v2, "primitiveList":Lcom/google/protobuf/IntArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 451
    invoke-virtual {v2, v3}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 450
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 453
    .end local v2    # "primitiveList":Lcom/google/protobuf/IntArrayList;
    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 454
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 455
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 454
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 458
    .end local v2    # "i":I
    :cond_3
    :goto_2
    return v1
.end method

.method static computeSizeFixed32List(ILjava/util/List;Z)I
    .locals 4
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 590
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 591
    .local v0, "length":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 592
    return v1

    .line 594
    :cond_0
    if-eqz p2, :cond_1

    .line 595
    mul-int/lit8 v1, v0, 0x4

    .line 596
    .local v1, "dataSize":I
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 597
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 596
    return v2

    .line 599
    .end local v1    # "dataSize":I
    :cond_1
    invoke-static {p0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v1

    mul-int v1, v1, v0

    return v1
.end method

.method static computeSizeFixed32ListNoTag(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 586
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method static computeSizeFixed64List(ILjava/util/List;Z)I
    .locals 4
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 608
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 609
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 610
    const/4 v1, 0x0

    return v1

    .line 612
    :cond_0
    if-eqz p2, :cond_1

    .line 613
    mul-int/lit8 v1, v0, 0x8

    .line 614
    .local v1, "dataSize":I
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 615
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 614
    return v2

    .line 617
    .end local v1    # "dataSize":I
    :cond_1
    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v1

    mul-int v1, v1, v0

    return v1
.end method

.method static computeSizeFixed64ListNoTag(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 604
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method static computeSizeGroupList(ILjava/util/List;)I
    .locals 4
    .param p0, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/protobuf/MessageLite;",
            ">;)I"
        }
    .end annotation

    .line 724
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/MessageLite;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 725
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 726
    const/4 v1, 0x0

    return v1

    .line 728
    :cond_0
    const/4 v1, 0x0

    .line 729
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 730
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {p0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 729
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 732
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method static computeSizeGroupList(ILjava/util/List;Lcom/google/protobuf/Schema;)I
    .locals 4
    .param p0, "fieldNumber"    # I
    .param p2, "schema"    # Lcom/google/protobuf/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/protobuf/MessageLite;",
            ">;",
            "Lcom/google/protobuf/Schema;",
            ")I"
        }
    .end annotation

    .line 736
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/MessageLite;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 737
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 738
    const/4 v1, 0x0

    return v1

    .line 740
    :cond_0
    const/4 v1, 0x0

    .line 741
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 742
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {p0, v3, p2}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    move-result v3

    add-int/2addr v1, v3

    .line 741
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 744
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method static computeSizeInt32List(ILjava/util/List;Z)I
    .locals 4
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 498
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 499
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 500
    const/4 v1, 0x0

    return v1

    .line 502
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v1

    .line 504
    .local v1, "size":I
    if-eqz p2, :cond_1

    .line 505
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 506
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 505
    return v2

    .line 508
    :cond_1
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int v2, v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method static computeSizeInt32ListNoTag(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 477
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 478
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 479
    const/4 v1, 0x0

    return v1

    .line 482
    :cond_0
    const/4 v1, 0x0

    .line 484
    .local v1, "size":I
    instance-of v2, p0, Lcom/google/protobuf/IntArrayList;

    if-eqz v2, :cond_2

    .line 485
    move-object v2, p0

    check-cast v2, Lcom/google/protobuf/IntArrayList;

    .line 486
    .local v2, "primitiveList":Lcom/google/protobuf/IntArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 487
    invoke-virtual {v2, v3}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 486
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 489
    .end local v2    # "primitiveList":Lcom/google/protobuf/IntArrayList;
    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 490
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 491
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 490
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 494
    .end local v2    # "i":I
    :cond_3
    :goto_2
    return v1
.end method

.method static computeSizeInt64List(ILjava/util/List;Z)I
    .locals 4
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 354
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 355
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 356
    const/4 v1, 0x0

    return v1

    .line 358
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v1

    .line 360
    .local v1, "size":I
    if-eqz p2, :cond_1

    .line 361
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 362
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 361
    return v2

    .line 364
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    mul-int v2, v2, v3

    add-int/2addr v2, v1

    return v2
.end method

.method static computeSizeInt64ListNoTag(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 333
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 334
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 335
    const/4 v1, 0x0

    return v1

    .line 338
    :cond_0
    const/4 v1, 0x0

    .line 340
    .local v1, "size":I
    instance-of v2, p0, Lcom/google/protobuf/LongArrayList;

    if-eqz v2, :cond_2

    .line 341
    move-object v2, p0

    check-cast v2, Lcom/google/protobuf/LongArrayList;

    .line 342
    .local v2, "primitiveList":Lcom/google/protobuf/LongArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 343
    invoke-virtual {v2, v3}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v1, v4

    .line 342
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 345
    .end local v2    # "primitiveList":Lcom/google/protobuf/LongArrayList;
    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 346
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 347
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 350
    .end local v2    # "i":I
    :cond_3
    :goto_2
    return v1
.end method

.method static computeSizeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)I
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "schema"    # Lcom/google/protobuf/Schema;

    .line 670
    instance-of v0, p1, Lcom/google/protobuf/LazyFieldLite;

    if-eqz v0, :cond_0

    .line 671
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LazyFieldLite;

    invoke-static {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->computeLazyFieldSize(ILcom/google/protobuf/LazyFieldLite;)I

    move-result v0

    return v0

    .line 673
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {p0, v0, p2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    move-result v0

    return v0
.end method

.method static computeSizeMessageList(ILjava/util/List;)I
    .locals 5
    .param p0, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 678
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 679
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 680
    const/4 v1, 0x0

    return v1

    .line 682
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    mul-int v1, v1, v0

    .line 683
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 684
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 685
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lcom/google/protobuf/LazyFieldLite;

    if-eqz v4, :cond_1

    .line 686
    move-object v4, v3

    check-cast v4, Lcom/google/protobuf/LazyFieldLite;

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/google/protobuf/LazyFieldLite;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_1

    .line 688
    :cond_1
    move-object v4, v3

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v1, v4

    .line 683
    .end local v3    # "value":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 691
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method static computeSizeMessageList(ILjava/util/List;Lcom/google/protobuf/Schema;)I
    .locals 5
    .param p0, "fieldNumber"    # I
    .param p2, "schema"    # Lcom/google/protobuf/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/Schema;",
            ")I"
        }
    .end annotation

    .line 695
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 696
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 697
    const/4 v1, 0x0

    return v1

    .line 699
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    mul-int v1, v1, v0

    .line 700
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 701
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 702
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lcom/google/protobuf/LazyFieldLite;

    if-eqz v4, :cond_1

    .line 703
    move-object v4, v3

    check-cast v4, Lcom/google/protobuf/LazyFieldLite;

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/google/protobuf/LazyFieldLite;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_1

    .line 705
    :cond_1
    move-object v4, v3

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, p2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    move-result v4

    add-int/2addr v1, v4

    .line 700
    .end local v3    # "value":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 708
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method static computeSizeSInt32List(ILjava/util/List;Z)I
    .locals 4
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 570
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 571
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 572
    const/4 v1, 0x0

    return v1

    .line 575
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v1

    .line 577
    .local v1, "size":I
    if-eqz p2, :cond_1

    .line 578
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 579
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 578
    return v2

    .line 581
    :cond_1
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int v2, v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method static computeSizeSInt32ListNoTag(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 549
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 550
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 551
    const/4 v1, 0x0

    return v1

    .line 554
    :cond_0
    const/4 v1, 0x0

    .line 556
    .local v1, "size":I
    instance-of v2, p0, Lcom/google/protobuf/IntArrayList;

    if-eqz v2, :cond_2

    .line 557
    move-object v2, p0

    check-cast v2, Lcom/google/protobuf/IntArrayList;

    .line 558
    .local v2, "primitiveList":Lcom/google/protobuf/IntArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 559
    invoke-virtual {v2, v3}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 558
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 561
    .end local v2    # "primitiveList":Lcom/google/protobuf/IntArrayList;
    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 562
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 563
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 562
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 566
    .end local v2    # "i":I
    :cond_3
    :goto_2
    return v1
.end method

.method static computeSizeSInt64List(ILjava/util/List;Z)I
    .locals 4
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 426
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 427
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 428
    const/4 v1, 0x0

    return v1

    .line 430
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v1

    .line 432
    .local v1, "size":I
    if-eqz p2, :cond_1

    .line 433
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 434
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 433
    return v2

    .line 436
    :cond_1
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int v2, v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method static computeSizeSInt64ListNoTag(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 405
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 406
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 407
    const/4 v1, 0x0

    return v1

    .line 410
    :cond_0
    const/4 v1, 0x0

    .line 412
    .local v1, "size":I
    instance-of v2, p0, Lcom/google/protobuf/LongArrayList;

    if-eqz v2, :cond_2

    .line 413
    move-object v2, p0

    check-cast v2, Lcom/google/protobuf/LongArrayList;

    .line 414
    .local v2, "primitiveList":Lcom/google/protobuf/LongArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 415
    invoke-virtual {v2, v3}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v1, v4

    .line 414
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 417
    .end local v2    # "primitiveList":Lcom/google/protobuf/LongArrayList;
    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 418
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 419
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 418
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 422
    .end local v2    # "i":I
    :cond_3
    :goto_2
    return v1
.end method

.method static computeSizeStringList(ILjava/util/List;)I
    .locals 6
    .param p0, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 641
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 642
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 643
    const/4 v1, 0x0

    return v1

    .line 645
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    mul-int v1, v1, v0

    .line 646
    .local v1, "size":I
    instance-of v2, p1, Lcom/google/protobuf/LazyStringList;

    if-eqz v2, :cond_3

    .line 647
    move-object v2, p1

    check-cast v2, Lcom/google/protobuf/LazyStringList;

    .line 648
    .local v2, "lazyList":Lcom/google/protobuf/LazyStringList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 649
    invoke-interface {v2, v3}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    .line 650
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Lcom/google/protobuf/ByteString;

    if-eqz v5, :cond_1

    .line 651
    move-object v5, v4

    check-cast v5, Lcom/google/protobuf/ByteString;

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_1

    .line 653
    :cond_1
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 648
    .end local v4    # "value":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 656
    .end local v2    # "lazyList":Lcom/google/protobuf/LazyStringList;
    .end local v3    # "i":I
    :cond_2
    goto :goto_4

    .line 657
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 658
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 659
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lcom/google/protobuf/ByteString;

    if-eqz v4, :cond_4

    .line 660
    move-object v4, v3

    check-cast v4, Lcom/google/protobuf/ByteString;

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_3

    .line 662
    :cond_4
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    .line 657
    .end local v3    # "value":Ljava/lang/Object;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 666
    .end local v2    # "i":I
    :cond_5
    :goto_4
    return v1
.end method

.method static computeSizeUInt32List(ILjava/util/List;Z)I
    .locals 4
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 534
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 535
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 536
    const/4 v1, 0x0

    return v1

    .line 538
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v1

    .line 540
    .local v1, "size":I
    if-eqz p2, :cond_1

    .line 541
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 542
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 541
    return v2

    .line 544
    :cond_1
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int v2, v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method static computeSizeUInt32ListNoTag(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 513
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 514
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 515
    const/4 v1, 0x0

    return v1

    .line 518
    :cond_0
    const/4 v1, 0x0

    .line 520
    .local v1, "size":I
    instance-of v2, p0, Lcom/google/protobuf/IntArrayList;

    if-eqz v2, :cond_2

    .line 521
    move-object v2, p0

    check-cast v2, Lcom/google/protobuf/IntArrayList;

    .line 522
    .local v2, "primitiveList":Lcom/google/protobuf/IntArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 523
    invoke-virtual {v2, v3}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 522
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 525
    .end local v2    # "primitiveList":Lcom/google/protobuf/IntArrayList;
    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 526
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 527
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 526
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 530
    .end local v2    # "i":I
    :cond_3
    :goto_2
    return v1
.end method

.method static computeSizeUInt64List(ILjava/util/List;Z)I
    .locals 4
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 390
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 391
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 392
    const/4 v1, 0x0

    return v1

    .line 394
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v1

    .line 396
    .local v1, "size":I
    if-eqz p2, :cond_1

    .line 397
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 398
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 397
    return v2

    .line 400
    :cond_1
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int v2, v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method static computeSizeUInt64ListNoTag(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 369
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 370
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 371
    const/4 v1, 0x0

    return v1

    .line 374
    :cond_0
    const/4 v1, 0x0

    .line 376
    .local v1, "size":I
    instance-of v2, p0, Lcom/google/protobuf/LongArrayList;

    if-eqz v2, :cond_2

    .line 377
    move-object v2, p0

    check-cast v2, Lcom/google/protobuf/LongArrayList;

    .line 378
    .local v2, "primitiveList":Lcom/google/protobuf/LongArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 379
    invoke-virtual {v2, v3}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v1, v4

    .line 378
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 381
    .end local v2    # "primitiveList":Lcom/google/protobuf/LongArrayList;
    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 382
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 383
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 382
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 386
    .end local v2    # "i":I
    :cond_3
    :goto_2
    return v1
.end method

.method static filterUnknownEnumList(ILjava/util/List;Lcom/google/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 5
    .param p0, "number"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "*>;TUB;",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 910
    .local p1, "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    .local p3, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local p4, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    if-nez p2, :cond_0

    .line 911
    return-object p3

    .line 914
    :cond_0
    instance-of v0, p1, Ljava/util/RandomAccess;

    if-eqz v0, :cond_5

    .line 915
    const/4 v0, 0x0

    .line 916
    .local v0, "writePos":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 917
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "readPos":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 918
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 919
    .local v3, "enumValue":I
    invoke-interface {p2, v3}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 920
    if-eq v2, v0, :cond_1

    .line 921
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 923
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 925
    :cond_2
    invoke-static {p0, v3, p3, p4}, Lcom/google/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p3

    .line 917
    .end local v3    # "enumValue":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 928
    .end local v2    # "readPos":I
    :cond_3
    if-eq v0, v1, :cond_4

    .line 929
    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 931
    .end local v0    # "writePos":I
    .end local v1    # "size":I
    :cond_4
    goto :goto_3

    .line 932
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 933
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 934
    .local v1, "enumValue":I
    invoke-interface {p2, v1}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v2

    if-nez v2, :cond_6

    .line 935
    invoke-static {p0, v1, p3, p4}, Lcom/google/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p3

    .line 936
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 938
    .end local v1    # "enumValue":I
    :cond_6
    goto :goto_2

    .line 940
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_7
    :goto_3
    return-object p3
.end method

.method static filterUnknownEnumList(ILjava/util/List;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 5
    .param p0, "number"    # I
    .param p2, "enumVerifier"    # Lcom/google/protobuf/Internal$EnumVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Internal$EnumVerifier;",
            "TUB;",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 950
    .local p1, "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local p4, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    if-nez p2, :cond_0

    .line 951
    return-object p3

    .line 954
    :cond_0
    instance-of v0, p1, Ljava/util/RandomAccess;

    if-eqz v0, :cond_5

    .line 955
    const/4 v0, 0x0

    .line 956
    .local v0, "writePos":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 957
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "readPos":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 958
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 959
    .local v3, "enumValue":I
    invoke-interface {p2, v3}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 960
    if-eq v2, v0, :cond_1

    .line 961
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 963
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 965
    :cond_2
    invoke-static {p0, v3, p3, p4}, Lcom/google/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p3

    .line 957
    .end local v3    # "enumValue":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 968
    .end local v2    # "readPos":I
    :cond_3
    if-eq v0, v1, :cond_4

    .line 969
    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 971
    .end local v0    # "writePos":I
    .end local v1    # "size":I
    :cond_4
    goto :goto_3

    .line 972
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 973
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 974
    .local v1, "enumValue":I
    invoke-interface {p2, v1}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 975
    invoke-static {p0, v1, p3, p4}, Lcom/google/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p3

    .line 976
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 978
    .end local v1    # "enumValue":I
    :cond_6
    goto :goto_2

    .line 980
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_7
    :goto_3
    return-object p3
.end method

.method private static getGeneratedMessageClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 812
    :try_start_0
    const-string v0, "com.google.protobuf.GeneratedMessageV3"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 813
    :catchall_0
    move-exception v0

    .line 814
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method static getMapDefaultEntry(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 828
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 829
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/google/protobuf/SchemaUtil;->toCamelCase(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "DefaultEntryHolder"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 830
    .local v0, "holder":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 831
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v3, v2

    if-ne v3, v1, :cond_0

    .line 838
    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v1}, Lcom/google/protobuf/UnsafeUtil;->getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 832
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to look up map field default entry holder class for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 836
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "name":Ljava/lang/String;
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    .end local v0    # "holder":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .restart local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 840
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getUnknownFieldSetSchema(Z)Lcom/google/protobuf/UnknownFieldSchema;
    .locals 6
    .param p0, "proto3"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation

    .line 800
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->getUnknownFieldSetSchemaClass()Ljava/lang/Class;

    move-result-object v1

    .line 801
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    .line 802
    return-object v0

    .line 804
    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UnknownFieldSchema;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 805
    .end local v1    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v1

    .line 806
    .local v1, "t":Ljava/lang/Throwable;
    return-object v0
.end method

.method private static getUnknownFieldSetSchemaClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 820
    :try_start_0
    const-string v0, "com.google.protobuf.UnknownFieldSetSchema"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 821
    :catchall_0
    move-exception v0

    .line 822
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method static mergeExtensions(Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "FT::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<",
            "TFT;>;>(",
            "Lcom/google/protobuf/ExtensionSchema<",
            "TFT;>;TT;TT;)V"
        }
    .end annotation

    .line 888
    .local p0, "schema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<TFT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    .line 889
    .local v0, "otherExtensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFT;>;"
    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 890
    invoke-virtual {p0, p1}, Lcom/google/protobuf/ExtensionSchema;->getMutableExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    .line 891
    .local v1, "messageExtensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFT;>;"
    invoke-virtual {v1, v0}, Lcom/google/protobuf/FieldSet;->mergeFrom(Lcom/google/protobuf/FieldSet;)V

    .line 893
    .end local v1    # "messageExtensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFT;>;"
    :cond_0
    return-void
.end method

.method static mergeMap(Lcom/google/protobuf/MapFieldSchema;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 2
    .param p0, "mapFieldSchema"    # Lcom/google/protobuf/MapFieldSchema;
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/MapFieldSchema;",
            "TT;TT;J)V"
        }
    .end annotation

    .line 880
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "o":Ljava/lang/Object;, "TT;"
    nop

    .line 882
    invoke-static {p1, p3, p4}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 881
    invoke-interface {p0, v0, v1}, Lcom/google/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 883
    .local v0, "merged":Ljava/lang/Object;
    invoke-static {p1, p3, p4, v0}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 884
    return-void
.end method

.method static mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;TT;)V"
        }
    .end annotation

    .line 897
    .local p0, "schema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 898
    .local v0, "messageUnknowns":Ljava/lang/Object;, "TUT;"
    invoke-virtual {p0, p2}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 899
    .local v1, "otherUnknowns":Ljava/lang/Object;, "TUT;"
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/UnknownFieldSchema;->merge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 900
    .local v2, "merged":Ljava/lang/Object;, "TUT;"
    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/UnknownFieldSchema;->setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 901
    return-void
.end method

.method public static proto2UnknownFieldSetSchema()Lcom/google/protobuf/UnknownFieldSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation

    .line 787
    sget-object v0, Lcom/google/protobuf/SchemaUtil;->PROTO2_UNKNOWN_FIELD_SET_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;

    return-object v0
.end method

.method public static proto3UnknownFieldSetSchema()Lcom/google/protobuf/UnknownFieldSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation

    .line 791
    sget-object v0, Lcom/google/protobuf/SchemaUtil;->PROTO3_UNKNOWN_FIELD_SET_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;

    return-object v0
.end method

.method public static requireGeneratedMessage(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 63
    .local p0, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message classes must extend GeneratedMessageV3 or GeneratedMessageLite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    :goto_0
    return-void
.end method

.method static safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 876
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static shouldUseTableSwitch(III)Z
    .locals 17
    .param p0, "lo"    # I
    .param p1, "hi"    # I
    .param p2, "numFields"    # I

    .line 776
    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x1

    const/16 v3, 0x28

    if-ge v0, v3, :cond_0

    .line 777
    return v2

    .line 779
    :cond_0
    int-to-long v3, v0

    move/from16 v5, p0

    int-to-long v6, v5

    sub-long/2addr v3, v6

    const-wide/16 v6, 0x1

    add-long/2addr v3, v6

    .line 780
    .local v3, "tableSpaceCost":J
    const-wide/16 v6, 0x3

    .line 781
    .local v6, "tableTimeCost":J
    const-wide/16 v8, 0x2

    int-to-long v10, v1

    mul-long v10, v10, v8

    const-wide/16 v8, 0x3

    add-long/2addr v10, v8

    .line 782
    .local v10, "lookupSpaceCost":J
    int-to-long v12, v1

    add-long/2addr v12, v8

    .line 783
    .local v12, "lookupTimeCost":J
    mul-long v14, v6, v8

    add-long/2addr v14, v3

    mul-long v8, v8, v12

    add-long/2addr v8, v10

    cmp-long v16, v14, v8

    if-gtz v16, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static shouldUseTableSwitch([Lcom/google/protobuf/FieldInfo;)Z
    .locals 3
    .param p0, "fields"    # [Lcom/google/protobuf/FieldInfo;

    .line 755
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 756
    return v1

    .line 759
    :cond_0
    aget-object v0, p0, v1

    invoke-virtual {v0}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v0

    .line 760
    .local v0, "lo":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v1

    .line 761
    .local v1, "hi":I
    array-length v2, p0

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/SchemaUtil;->shouldUseTableSwitch(III)Z

    move-result v2

    return v2
.end method

.method static storeUnknownEnum(IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 2
    .param p0, "number"    # I
    .param p1, "enumValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(IITUB;",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 987
    .local p2, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local p3, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    if-nez p2, :cond_0

    .line 988
    invoke-virtual {p3}, Lcom/google/protobuf/UnknownFieldSchema;->newBuilder()Ljava/lang/Object;

    move-result-object p2

    .line 990
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p3, p2, p0, v0, v1}, Lcom/google/protobuf/UnknownFieldSchema;->addVarint(Ljava/lang/Object;IJ)V

    .line 991
    return-object p2
.end method

.method static toCamelCase(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "capNext"    # Z

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 846
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 847
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 849
    .local v2, "c":C
    const/16 v3, 0x61

    if-gt v3, v2, :cond_1

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_1

    .line 850
    if-eqz p1, :cond_0

    .line 851
    add-int/lit8 v3, v2, -0x20

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 853
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 855
    :goto_1
    const/4 p1, 0x0

    goto :goto_3

    .line 856
    :cond_1
    const/16 v3, 0x41

    if-gt v3, v2, :cond_3

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_3

    .line 857
    if-nez v1, :cond_2

    if-nez p1, :cond_2

    .line 859
    add-int/lit8 v3, v2, 0x20

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 861
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 863
    :goto_2
    const/4 p1, 0x0

    goto :goto_3

    .line 864
    :cond_3
    const/16 v3, 0x30

    if-gt v3, v2, :cond_4

    const/16 v3, 0x39

    if-gt v2, v3, :cond_4

    .line 865
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 866
    const/4 p1, 0x1

    goto :goto_3

    .line 868
    :cond_4
    const/4 p1, 0x1

    .line 846
    .end local v2    # "c":C
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 871
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static unknownFieldSetLiteSchema()Lcom/google/protobuf/UnknownFieldSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation

    .line 795
    sget-object v0, Lcom/google/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;

    return-object v0
.end method

.method public static writeBool(IZLcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Z
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    if-eqz p1, :cond_0

    .line 151
    const/4 v0, 0x1

    invoke-interface {p2, p0, v0}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    .line 153
    :cond_0
    return-void
.end method

.method public static writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeBoolList(ILjava/util/List;Z)V

    .line 279
    :cond_0
    return-void
.end method

.method public static writeBytes(ILcom/google/protobuf/ByteString;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lcom/google/protobuf/ByteString;
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 175
    :cond_0
    return-void
.end method

.method public static writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/ByteString;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeBytesList(ILjava/util/List;)V

    .line 293
    :cond_0
    return-void
.end method

.method public static writeDouble(IDLcom/google/protobuf/Writer;)V
    .locals 5
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # D
    .param p3, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 73
    invoke-interface {p3, p0, p1, p2}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    .line 75
    :cond_0
    return-void
.end method

.method public static writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeDoubleList(ILjava/util/List;Z)V

    .line 188
    :cond_0
    return-void
.end method

.method public static writeEnum(IILcom/google/protobuf/Writer;)V
    .locals 0
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    if-eqz p1, :cond_0

    .line 145
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    .line 147
    :cond_0
    return-void
.end method

.method public static writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeEnumList(ILjava/util/List;Z)V

    .line 272
    :cond_0
    return-void
.end method

.method public static writeFixed32(IILcom/google/protobuf/Writer;)V
    .locals 0
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    if-eqz p1, :cond_0

    .line 133
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    .line 135
    :cond_0
    return-void
.end method

.method public static writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeFixed32List(ILjava/util/List;Z)V

    .line 258
    :cond_0
    return-void
.end method

.method public static writeFixed64(IJLcom/google/protobuf/Writer;)V
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J
    .param p3, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 103
    invoke-interface {p3, p0, p1, p2}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    .line 105
    :cond_0
    return-void
.end method

.method public static writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeFixed64List(ILjava/util/List;Z)V

    .line 223
    :cond_0
    return-void
.end method

.method public static writeFloat(IFLcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # F
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    .line 81
    :cond_0
    return-void
.end method

.method public static writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeFloatList(ILjava/util/List;Z)V

    .line 195
    :cond_0
    return-void
.end method

.method public static writeGroupList(ILjava/util/List;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeGroupList(ILjava/util/List;)V

    .line 323
    :cond_0
    return-void
.end method

.method public static writeGroupList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/Schema;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "schema"    # Lcom/google/protobuf/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/Writer;",
            "Lcom/google/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/Schema;)V

    .line 330
    :cond_0
    return-void
.end method

.method public static writeInt32(IILcom/google/protobuf/Writer;)V
    .locals 0
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    if-eqz p1, :cond_0

    .line 115
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    .line 117
    :cond_0
    return-void
.end method

.method public static writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeInt32List(ILjava/util/List;Z)V

    .line 237
    :cond_0
    return-void
.end method

.method public static writeInt64(IJLcom/google/protobuf/Writer;)V
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J
    .param p3, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 85
    invoke-interface {p3, p0, p1, p2}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    .line 87
    :cond_0
    return-void
.end method

.method public static writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeInt64List(ILjava/util/List;Z)V

    .line 202
    :cond_0
    return-void
.end method

.method public static writeLazyFieldList(ILjava/util/List;Lcom/google/protobuf/Writer;)V
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 313
    .local v1, "item":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lcom/google/protobuf/LazyFieldLite;

    invoke-virtual {v2, p2, p0}, Lcom/google/protobuf/LazyFieldLite;->writeTo(Lcom/google/protobuf/Writer;I)V

    .line 314
    .end local v1    # "item":Ljava/lang/Object;
    goto :goto_0

    .line 316
    :cond_0
    return-void
.end method

.method public static writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    if-eqz p1, :cond_0

    .line 179
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    .line 181
    :cond_0
    return-void
.end method

.method public static writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeMessageList(ILjava/util/List;)V

    .line 300
    :cond_0
    return-void
.end method

.method public static writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/Schema;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "schema"    # Lcom/google/protobuf/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/Writer;",
            "Lcom/google/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Schema;)V

    .line 307
    :cond_0
    return-void
.end method

.method public static writeSFixed32(IILcom/google/protobuf/Writer;)V
    .locals 0
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    if-eqz p1, :cond_0

    .line 139
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    .line 141
    :cond_0
    return-void
.end method

.method public static writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeSFixed32List(ILjava/util/List;Z)V

    .line 265
    :cond_0
    return-void
.end method

.method public static writeSFixed64(IJLcom/google/protobuf/Writer;)V
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J
    .param p3, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 109
    invoke-interface {p3, p0, p1, p2}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    .line 111
    :cond_0
    return-void
.end method

.method public static writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeSFixed64List(ILjava/util/List;Z)V

    .line 230
    :cond_0
    return-void
.end method

.method public static writeSInt32(IILcom/google/protobuf/Writer;)V
    .locals 0
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    if-eqz p1, :cond_0

    .line 127
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    .line 129
    :cond_0
    return-void
.end method

.method public static writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeSInt32List(ILjava/util/List;Z)V

    .line 251
    :cond_0
    return-void
.end method

.method public static writeSInt64(IJLcom/google/protobuf/Writer;)V
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J
    .param p3, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 97
    invoke-interface {p3, p0, p1, p2}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    .line 99
    :cond_0
    return-void
.end method

.method public static writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeSInt64List(ILjava/util/List;Z)V

    .line 216
    :cond_0
    return-void
.end method

.method public static writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 157
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0, p2}, Lcom/google/protobuf/SchemaUtil;->writeStringInternal(ILjava/lang/String;Lcom/google/protobuf/Writer;)V

    goto :goto_0

    .line 159
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-static {p0, v0, p2}, Lcom/google/protobuf/SchemaUtil;->writeBytes(ILcom/google/protobuf/ByteString;Lcom/google/protobuf/Writer;)V

    .line 161
    :goto_0
    return-void
.end method

.method private static writeStringInternal(ILjava/lang/String;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeString(ILjava/lang/String;)V

    .line 168
    :cond_0
    return-void
.end method

.method public static writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeStringList(ILjava/util/List;)V

    .line 286
    :cond_0
    return-void
.end method

.method public static writeUInt32(IILcom/google/protobuf/Writer;)V
    .locals 0
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    if-eqz p1, :cond_0

    .line 121
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    .line 123
    :cond_0
    return-void
.end method

.method public static writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeUInt32List(ILjava/util/List;Z)V

    .line 244
    :cond_0
    return-void
.end method

.method public static writeUInt64(IJLcom/google/protobuf/Writer;)V
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J
    .param p3, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 91
    invoke-interface {p3, p0, p1, p2}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    .line 93
    :cond_0
    return-void
.end method

.method public static writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeUInt64List(ILjava/util/List;Z)V

    .line 209
    :cond_0
    return-void
.end method
