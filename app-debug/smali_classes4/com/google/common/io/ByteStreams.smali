.class public final Lcom/google/common/io/ByteStreams;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# annotations
.annotation runtime Lcom/google/common/io/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/ByteStreams$LimitedInputStream;,
        Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;,
        Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final MAX_ARRAY_LEN:I = 0x7ffffff7

.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

.field private static final TO_BYTE_ARRAY_DEQUE_SIZE:I = 0x14

.field private static final ZERO_COPY_CHUNK_SIZE:I = 0x80000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 658
    new-instance v0, Lcom/google/common/io/ByteStreams$1;

    invoke-direct {v0}, Lcom/google/common/io/ByteStreams$1;-><init>()V

    sput-object v0, Lcom/google/common/io/ByteStreams;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combineBuffers(Ljava/util/Queue;I)[B
    .locals 6
    .param p1, "totalLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "[B>;I)[B"
        }
    .end annotation

    .line 210
    .local p0, "bufs":Ljava/util/Queue;, "Ljava/util/Queue<[B>;"
    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 211
    new-array v0, v1, [B

    return-object v0

    .line 213
    :cond_0
    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 214
    .local v0, "result":[B
    array-length v2, v0

    if-ne v2, p1, :cond_1

    .line 215
    return-object v0

    .line 217
    :cond_1
    array-length v2, v0

    sub-int v2, p1, v2

    .line 218
    .local v2, "remaining":I
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 219
    :goto_0
    if-lez v2, :cond_2

    .line 220
    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 221
    .local v3, "buf":[B
    array-length v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 222
    .local v4, "bytesToCopy":I
    sub-int v5, p1, v2

    .line 223
    .local v5, "resultOffset":I
    invoke-static {v3, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    sub-int/2addr v2, v4

    .line 225
    .end local v3    # "buf":[B
    .end local v4    # "bytesToCopy":I
    .end local v5    # "resultOffset":I
    goto :goto_0

    .line 226
    :cond_2
    return-object v0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .param p0, "from"    # Ljava/io/InputStream;
    .param p1, "to"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {}, Lcom/google/common/io/ByteStreams;->createBuffer()[B

    move-result-object v0

    .line 112
    .local v0, "buf":[B
    const-wide/16 v1, 0x0

    .line 114
    .local v1, "total":J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 115
    .local v3, "r":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 116
    nop

    .line 121
    .end local v3    # "r":I
    return-wide v1

    .line 118
    .restart local v3    # "r":I
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 119
    int-to-long v4, v3

    add-long/2addr v1, v4

    .line 120
    .end local v3    # "r":I
    goto :goto_0
.end method

.method public static copy(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/WritableByteChannel;)J
    .locals 11
    .param p0, "from"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "to"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    instance-of v0, p0, Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_1

    .line 138
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/FileChannel;

    .line 139
    .local v0, "sourceChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v7

    .line 140
    .local v7, "oldPosition":J
    move-wide v1, v7

    move-wide v9, v1

    .line 143
    .local v9, "position":J
    :cond_0
    const-wide/32 v4, 0x80000

    move-object v1, v0

    move-wide v2, v9

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v1

    .line 144
    .local v1, "copied":J
    add-long/2addr v9, v1

    .line 145
    invoke-virtual {v0, v9, v10}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 146
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    cmp-long v5, v9, v3

    if-ltz v5, :cond_0

    .line 147
    sub-long v3, v9, v7

    return-wide v3

    .line 150
    .end local v0    # "sourceChannel":Ljava/nio/channels/FileChannel;
    .end local v1    # "copied":J
    .end local v7    # "oldPosition":J
    .end local v9    # "position":J
    :cond_1
    invoke-static {}, Lcom/google/common/io/ByteStreams;->createBuffer()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 151
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const-wide/16 v1, 0x0

    .line 152
    .local v1, "total":J
    :goto_0
    invoke-interface {p0, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 153
    invoke-static {v0}, Lcom/google/common/io/Java8Compatibility;->flip(Ljava/nio/Buffer;)V

    .line 154
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_1

    .line 157
    :cond_2
    invoke-static {v0}, Lcom/google/common/io/Java8Compatibility;->clear(Ljava/nio/Buffer;)V

    goto :goto_0

    .line 159
    :cond_3
    return-wide v1
.end method

.method static createBuffer()[B
    .locals 1

    .line 64
    const/16 v0, 0x2000

    new-array v0, v0, [B

    return-object v0
.end method

.method public static exhaust(Ljava/io/InputStream;)J
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    const-wide/16 v0, 0x0

    .line 290
    .local v0, "total":J
    invoke-static {}, Lcom/google/common/io/ByteStreams;->createBuffer()[B

    move-result-object v2

    .line 291
    .local v2, "buf":[B
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    int-to-long v3, v3

    move-wide v5, v3

    .local v5, "read":J
    const-wide/16 v7, -0x1

    cmp-long v9, v3, v7

    if-eqz v9, :cond_0

    .line 292
    add-long/2addr v0, v5

    goto :goto_0

    .line 294
    :cond_0
    return-wide v0
.end method

.method public static limit(Ljava/io/InputStream;J)Ljava/io/InputStream;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "limit"    # J

    .line 703
    new-instance v0, Lcom/google/common/io/ByteStreams$LimitedInputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/io/ByteStreams$LimitedInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public static newDataInput(Ljava/io/ByteArrayInputStream;)Lcom/google/common/io/ByteArrayDataInput;
    .locals 2
    .param p0, "byteArrayInputStream"    # Ljava/io/ByteArrayInputStream;

    .line 328
    new-instance v0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;-><init>(Ljava/io/ByteArrayInputStream;)V

    return-object v0
.end method

.method public static newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;
    .locals 1
    .param p0, "bytes"    # [B

    .line 303
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataInput(Ljava/io/ByteArrayInputStream;)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v0

    return-object v0
.end method

.method public static newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "start"    # I

    .line 315
    array-length v0, p0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 316
    new-instance v0, Ljava/io/ByteArrayInputStream;

    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-direct {v0, p0, p1, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataInput(Ljava/io/ByteArrayInputStream;)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v0

    return-object v0
.end method

.method public static newDataOutput()Lcom/google/common/io/ByteArrayDataOutput;
    .locals 1

    .line 480
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataOutput(Ljava/io/ByteArrayOutputStream;)Lcom/google/common/io/ByteArrayDataOutput;

    move-result-object v0

    return-object v0
.end method

.method public static newDataOutput(I)Lcom/google/common/io/ByteArrayDataOutput;
    .locals 4
    .param p0, "size"    # I

    .line 493
    if-ltz p0, :cond_0

    .line 496
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataOutput(Ljava/io/ByteArrayOutputStream;)Lcom/google/common/io/ByteArrayDataOutput;

    move-result-object v0

    return-object v0

    .line 494
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Invalid size: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newDataOutput(Ljava/io/ByteArrayOutputStream;)Lcom/google/common/io/ByteArrayDataOutput;
    .locals 2
    .param p0, "byteArrayOutputStream"    # Ljava/io/ByteArrayOutputStream;

    .line 513
    new-instance v0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;-><init>(Ljava/io/ByteArrayOutputStream;)V

    return-object v0
.end method

.method public static nullOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 690
    sget-object v0, Lcom/google/common/io/ByteStreams;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method public static read(Ljava/io/InputStream;[BII)I
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 934
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    if-ltz p3, :cond_2

    .line 939
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 940
    const/4 v0, 0x0

    .line 941
    .local v0, "total":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 942
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 943
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 944
    goto :goto_1

    .line 946
    :cond_0
    add-int/2addr v0, v1

    .line 947
    .end local v1    # "result":I
    goto :goto_0

    .line 948
    :cond_1
    :goto_1
    return v0

    .line 937
    .end local v0    # "total":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "len (%s) cannot be negative"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readBytes(Ljava/io/InputStream;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation runtime Lcom/google/common/io/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lcom/google/common/io/ByteProcessor<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 894
    .local p1, "processor":Lcom/google/common/io/ByteProcessor;, "Lcom/google/common/io/ByteProcessor<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    invoke-static {}, Lcom/google/common/io/ByteStreams;->createBuffer()[B

    move-result-object v0

    .line 900
    .local v0, "buf":[B
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 901
    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/common/io/ByteProcessor;->processBytes([BII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 902
    :cond_1
    invoke-interface {p1}, Lcom/google/common/io/ByteProcessor;->getResult()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static readFully(Ljava/io/InputStream;[B)V
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 790
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[BII)V

    .line 791
    return-void
.end method

.method public static readFully(Ljava/io/InputStream;[BII)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 807
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 808
    .local v0, "read":I
    if-ne v0, p3, :cond_0

    .line 812
    return-void

    .line 809
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    const/16 v2, 0x51

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "reached end of stream after reading "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes expected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static skipFully(Ljava/io/InputStream;J)V
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 825
    invoke-static {p0, p1, p2}, Lcom/google/common/io/ByteStreams;->skipUpTo(Ljava/io/InputStream;J)J

    move-result-wide v0

    .line 826
    .local v0, "skipped":J
    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    .line 830
    return-void

    .line 827
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    const/16 v3, 0x64

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "reached end of stream after skipping "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes expected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static skipSafely(Ljava/io/InputStream;J)J
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 876
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 877
    .local v0, "available":I
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    int-to-long v1, v0

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method static skipUpTo(Ljava/io/InputStream;J)J
    .locals 13
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 838
    const-wide/16 v0, 0x0

    .line 840
    .local v0, "totalSkipped":J
    const/4 v2, 0x0

    .line 842
    .local v2, "buf":[B
    :goto_0
    cmp-long v3, v0, p1

    if-gez v3, :cond_2

    .line 843
    sub-long v3, p1, v0

    .line 844
    .local v3, "remaining":J
    invoke-static {p0, v3, v4}, Lcom/google/common/io/ByteStreams;->skipSafely(Ljava/io/InputStream;J)J

    move-result-wide v5

    .line 846
    .local v5, "skipped":J
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    .line 849
    const-wide/16 v7, 0x2000

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v8, v7

    .line 850
    .local v8, "skip":I
    if-nez v2, :cond_0

    .line 854
    new-array v2, v8, [B

    .line 856
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p0, v2, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    int-to-long v9, v7

    move-wide v5, v9

    const-wide/16 v11, -0x1

    cmp-long v7, v9, v11

    if-nez v7, :cond_1

    .line 858
    goto :goto_1

    .line 862
    .end local v8    # "skip":I
    :cond_1
    add-long/2addr v0, v5

    .line 863
    .end local v3    # "remaining":J
    .end local v5    # "skipped":J
    goto :goto_0

    .line 865
    :cond_2
    :goto_1
    return-wide v0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/common/io/ByteStreams;->toByteArrayInternal(Ljava/io/InputStream;Ljava/util/Queue;I)[B

    move-result-object v0

    return-object v0
.end method

.method static toByteArray(Ljava/io/InputStream;J)[B
    .locals 8
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "expectedSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "expectedSize (%s) must be non-negative"

    invoke-static {v2, v3, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 248
    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, p1, v2

    if-gtz v4, :cond_4

    .line 252
    long-to-int v2, p1

    new-array v2, v2, [B

    .line 253
    .local v2, "bytes":[B
    long-to-int v3, p1

    .line 255
    .local v3, "remaining":I
    :goto_1
    const/4 v4, -0x1

    if-lez v3, :cond_2

    .line 256
    long-to-int v5, p1

    sub-int/2addr v5, v3

    .line 257
    .local v5, "off":I
    invoke-virtual {p0, v2, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 258
    .local v6, "read":I
    if-ne v6, v4, :cond_1

    .line 261
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0

    .line 263
    :cond_1
    sub-int/2addr v3, v6

    .line 264
    .end local v5    # "off":I
    .end local v6    # "read":I
    goto :goto_1

    .line 267
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 268
    .local v5, "b":I
    if-ne v5, v4, :cond_3

    .line 269
    return-object v2

    .line 273
    :cond_3
    new-instance v4, Ljava/util/ArrayDeque;

    const/16 v6, 0x16

    invoke-direct {v4, v6}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 274
    .local v4, "bufs":Ljava/util/Queue;, "Ljava/util/Queue<[B>;"
    invoke-interface {v4, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 275
    new-array v6, v1, [B

    int-to-byte v7, v5

    aput-byte v7, v6, v0

    invoke-interface {v4, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 276
    array-length v0, v2

    add-int/2addr v0, v1

    invoke-static {p0, v4, v0}, Lcom/google/common/io/ByteStreams;->toByteArrayInternal(Ljava/io/InputStream;Ljava/util/Queue;I)[B

    move-result-object v0

    return-object v0

    .line 249
    .end local v2    # "bytes":[B
    .end local v3    # "remaining":I
    .end local v4    # "bufs":Ljava/util/Queue;, "Ljava/util/Queue<[B>;"
    .end local v5    # "b":I
    :cond_4
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const/16 v1, 0x3e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes is too large to fit in a byte array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toByteArrayInternal(Ljava/io/InputStream;Ljava/util/Queue;I)[B
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p2, "totalLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Queue<",
            "[B>;I)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    .local p1, "bufs":Ljava/util/Queue;, "Ljava/util/Queue<[B>;"
    invoke-static {p2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    const/16 v2, 0x80

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v2, 0x2000

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 183
    .local v0, "initialBufferSize":I
    move v2, v0

    .line 184
    .local v2, "bufSize":I
    :goto_0
    const/4 v3, -0x1

    const v4, 0x7ffffff7

    if-ge p2, v4, :cond_3

    .line 186
    sub-int/2addr v4, p2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v4, v4, [B

    .line 187
    .local v4, "buf":[B
    invoke-interface {p1, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 188
    const/4 v5, 0x0

    .line 189
    .local v5, "off":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 191
    array-length v6, v4

    sub-int/2addr v6, v5

    invoke-virtual {p0, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 192
    .local v6, "r":I
    if-ne v6, v3, :cond_0

    .line 193
    invoke-static {p1, p2}, Lcom/google/common/io/ByteStreams;->combineBuffers(Ljava/util/Queue;I)[B

    move-result-object v1

    return-object v1

    .line 195
    :cond_0
    add-int/2addr v5, v6

    .line 196
    add-int/2addr p2, v6

    .line 197
    .end local v6    # "r":I
    goto :goto_1

    .line 185
    .end local v4    # "buf":[B
    .end local v5    # "off":I
    :cond_1
    const/16 v3, 0x1000

    if-ge v2, v3, :cond_2

    const/4 v3, 0x4

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    :goto_2
    invoke-static {v2, v3}, Lcom/google/common/math/IntMath;->saturatedMultiply(II)I

    move-result v2

    goto :goto_0

    .line 201
    .end local v2    # "bufSize":I
    :cond_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 203
    invoke-static {p1, v4}, Lcom/google/common/io/ByteStreams;->combineBuffers(Ljava/util/Queue;I)[B

    move-result-object v1

    return-object v1

    .line 205
    :cond_4
    new-instance v1, Ljava/lang/OutOfMemoryError;

    const-string v2, "input is too large to fit in a byte array"

    invoke-direct {v1, v2}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
