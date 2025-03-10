﻿using SIRCADE.ApiCore.Models.Notifications.Entities;

namespace SIRCADE.ApiCore.Models.Notifications.Persistence;

public interface IGetUserNotificationsPersistence
{
    Task<IEnumerable<UserNotification>> ExecuteAsync(IEnumerable<int> reservationIds, DateTime deliveringDate);
    Task<IEnumerable<UserNotification>> ExecuteAsync(int userId);
}