.class Lio/grpc/internal/DelayedClientTransport$3;
.super Ljava/lang/Object;
.source "DelayedClientTransport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedClientTransport;->start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/DelayedClientTransport;

.field final synthetic val$listener:Lio/grpc/internal/ManagedClientTransport$Listener;


# direct methods
.method constructor <init>(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/internal/ManagedClientTransport$Listener;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/DelayedClientTransport;

    .line 119
    iput-object p1, p0, Lio/grpc/internal/DelayedClientTransport$3;->this$0:Lio/grpc/internal/DelayedClientTransport;

    iput-object p2, p0, Lio/grpc/internal/DelayedClientTransport$3;->val$listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 122
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$3;->val$listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    invoke-interface {v0}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportTerminated()V

    .line 123
    return-void
.end method
