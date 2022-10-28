.class public final synthetic Lcom/google/common/collect/RowSortedTable$-CC;
.super Ljava/lang/Object;
.source "RowSortedTable.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x7
    versionHash = "5e5398f0546d1d7afd62641edb14d82894f11ddc41bce363a0c8d0dac82c9c5a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static bridge synthetic $default$rowKeySet(Lcom/google/common/collect/RowSortedTable;)Ljava/util/Set;
    .locals 1
    .param p0, "_this"    # Lcom/google/common/collect/RowSortedTable;

    .line 36
    .local p0, "this":Lcom/google/common/collect/RowSortedTable;, "Lcom/google/common/collect/RowSortedTable<TR;TC;TV;>;"
    invoke-interface {p0}, Lcom/google/common/collect/RowSortedTable;->rowKeySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$rowMap(Lcom/google/common/collect/RowSortedTable;)Ljava/util/Map;
    .locals 1
    .param p0, "_this"    # Lcom/google/common/collect/RowSortedTable;

    .line 36
    .local p0, "this":Lcom/google/common/collect/RowSortedTable;, "Lcom/google/common/collect/RowSortedTable<TR;TC;TV;>;"
    invoke-interface {p0}, Lcom/google/common/collect/RowSortedTable;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
