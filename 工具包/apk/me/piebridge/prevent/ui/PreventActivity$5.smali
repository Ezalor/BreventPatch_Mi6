.class Lme/piebridge/prevent/ui/PreventActivity$5;
.super Ljava/lang/Object;
.source "PreventActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/piebridge/prevent/ui/PreventActivity;->onRestart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/piebridge/prevent/ui/PreventActivity;


# direct methods
.method constructor <init>(Lme/piebridge/prevent/ui/PreventActivity;)V
    .registers 2

    .prologue
    .line 155
    iput-object p1, p0, Lme/piebridge/prevent/ui/PreventActivity$5;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$5;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v0}, Lme/piebridge/prevent/ui/PreventActivity;->a(Lme/piebridge/prevent/ui/PreventActivity;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 159
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$5;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v0}, Lme/piebridge/prevent/ui/PreventActivity;->b(Lme/piebridge/prevent/ui/PreventActivity;)V

    .line 161
    :cond_d
    return-void
.end method
