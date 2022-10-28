.class public final synthetic Lcom/google/common/collect/FilteredSetMultimap$-CC;
.super Ljava/lang/Object;
.source "FilteredSetMultimap.java"


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
.method public static bridge synthetic $default$unfiltered(Lcom/google/common/collect/FilteredSetMultimap;)Lcom/google/common/collect/Multimap;
    .locals 1
    .param p0, "_this"    # Lcom/google/common/collect/FilteredSetMultimap;

    .line 27
    .local p0, "this":Lcom/google/common/collect/FilteredSetMultimap;, "Lcom/google/common/collect/FilteredSetMultimap<TK;TV;>;"
    invoke-interface {p0}, Lcom/google/common/collect/FilteredSetMultimap;->unfiltered()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method
