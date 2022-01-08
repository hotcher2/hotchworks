/**
 * BSD 3-Clause License
 *
 * Copyright (c) 2020, james@sparkworks.io
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * - Redistributions of source code must retain the above copyright notice, this
 *   list of conditions and the following disclaimer.
 *
 * - Redistributions in binary form must reproduce the above copyright notice,
 *   this list of conditions and the following disclaimer in the documentation
 *   and/or other materials provided with the distribution.
 *
 * - Neither the name of the copyright holder nor the names of its
 *   contributors may be used to endorse or promote products derived from
 *   this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

import { LightningElement, api } from 'lwc';
import { convertToSingleLineString } from 'c/baseUtils';

export default class CheckOpportunitiesExample extends LightningElement {
  // These should always be included when creating LWCs from the LWC Table Action
  @api uniqueBoundary;
  @api selectedRows;
  @api sourceRecordId;

  queryString;

  // private
  _isRendered;
  _messageService;
  _accountIdSet = new Set();

  connectedCallback() {
    if (this.selectedRows && this.selectedRows.length) {
      this.selectedRows.forEach(row => {
        this._accountIdSet.add(`'${row.AccountId}'`);
      });
    }
    if (this._accountIdSet.size > 0) {
      let accountIds = Array.from(this._accountIdSet.keys());
      this.queryString = convertToSingleLineString`
                SELECT Account.Name, Name, Amount, CloseDate, StageName
                FROM Opportunity
                WHERE AccountId IN (${accountIds.join(',')})
                ORDER BY Account.Name ASC
            `;
    }
  }

  renderedCallback() {
    if (this._isRendered) {
      return;
    }
    this._isRendered = true;
    this._messageService = this.template.querySelector('c-message-service');
  }
}
