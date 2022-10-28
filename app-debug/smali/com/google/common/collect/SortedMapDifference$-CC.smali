.class public final synthetic Lcom/google/common/collect/SortedMapDifference$-CC;
.super Ljava/lang/Object;
.source "SortedMapDifference.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x7
    versionHash = "5e5398f0546d1d7afd62641edb14d82894f11ddc41bce363a0c8d0dac82c9c5a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static bridge synthetic $default$entriesDiffering(Lcom/google/common/collect/SortedMapDifference;)Ljava/util/Map;
    .locals 1
    .param p0, "_this"    # Lcom/google/common/collect/SortedMapDifference;

    .line 29
    .local p0, "this":Lcom/google/common/collect/SortedMapDifference;, "Lcom/google/common/collect/SortedMapDifference<TK;TV;>;"
    invoke-interface {p0}, Lcom/google/common/collect/SortedMapDifference;->entriesDiffering()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$entriesInCommon(Lcom/google/common/collect/SortedMapDifference;)Ljava/util/Map;
    .locals 1
    .param p0, "_this"    # Lcom/google/common/collect/SortedMapDifference;

    .line 29
    .local p0, "this":Lcom/google/common/collect/SortedMapDifference;, "Lcom/google/common/collect/SortedMapDifference<TK;TV;>;"
    invoke-interface {p0}, Lcom/google/common/collect/SortedMapDifference;->entriesInCommon()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$entriesOnlyOnLeft(Lcom/google/common/collect/SortedMapDifference;)Ljava/util/Map;
    .locals 1
    .param p0, "_this"    # Lcom/google/common/collect/SortedMapDifference;

    .line 29
    .local p0, "this":Lcom/google/common/collect/SortedMapDifference;, "Lcom/google/common/collect/SortedMapDifference<TK;TV;>;"
    invoke-interface {p0}, Lcom/google/common/collect/SortedMapDifference;->entriesOnlyOnLeft()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$entriesOnlyOnRight(Lcom/google/common/collect/SortedMapDifference;)Ljava/util/Map;
    .locals 1
    .param p0, "_this"    # Lcom/google/common/collect/SortedMapDifference;

    .line 29
    .local p0, "this":Lcom/google/common/collect/SortedMapDifference;, "Lcom/google/common/collect/SortedMapDifference<TK;TV;>;"
    invoke-interface {p0}, Lcom/google/common/collect/SortedMapDifference;->entriesOnlyOnRight()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
