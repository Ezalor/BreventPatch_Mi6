.class Lme/piebridge/prevent/ui/PreventActivity$8;
.super Ljava/lang/Object;
.source "PreventActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/piebridge/prevent/ui/PreventActivity;->a(Ljava/lang/String;)V
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
    .line 440
    iput-object p1, p0, Lme/piebridge/prevent/ui/PreventActivity$8;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 443
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$8;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/PreventActivity;->finish()V

    .line 444
    return-void
.end method
