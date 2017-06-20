.class final Lme/piebridge/prevent/framework/g$8;
.super Ljava/lang/Object;
.source "SystemHook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/piebridge/prevent/framework/g;->n(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 664
    iput-object p1, p0, Lme/piebridge/prevent/framework/g$8;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 667
    iget-object v0, p0, Lme/piebridge/prevent/framework/g$8;->a:Ljava/lang/String;

    invoke-static {v0}, Lme/piebridge/prevent/framework/g;->e(Ljava/lang/String;)V

    .line 668
    return-void
.end method
